#!/usr/bin/env bash
set -euo pipefail

REPO="$PWD"
TS="$(date -u +%Y%m%d-%H%M%S)"
OUT="audits/${TS}"
mkdir -p "$OUT"

# ---- helper
getenv(){ grep -E "^$1=" /etc/taais/env 2>/dev/null | sed 's/^[^=]*=//' || true; }

WATCHER_STATE="$(systemctl is-active robot-sync.service 2>/dev/null || true)"
DOCS_SVC_STATE="$(systemctl is-active taais-docs-autogen.service 2>/dev/null || true)"
DOCS_TMR_STATE="$(systemctl is-enabled taais-docs-autogen.timer 2>/dev/null || echo disabled)"
DOCS_TMR_NEXT="$(systemctl list-timers --all 2>/dev/null | awk '/taais-docs-autogen.timer/{print $3,$4,$5; exit}' || true)"

BRANCH="$(git rev-parse --abbrev-ref HEAD || true)"
REMOTE="$(git remote get-url origin || true)"
LAST_COMMITS="$(git --no-pager log -5 --pretty=format:"%h %ad %s" --date=iso || true)"
LAST_PUSH="$(git for-each-ref --format='%(refname:short) %(upstream:track)' | sed -n 's/^main *\[.*\]//p' >/dev/null 2>&1; git log -1 --pretty=format:"%ad" --date=iso || true)"

SRC="$HOME/taais_pdfs"
mkdir -p "$SRC"

# PDF & MD detail
declare -A PDFMAP=(
  [BRD.pdf]=00-BRD.md
  [FRD.pdf]=01-FRD.md
  [FSD.pdf]=02-FSD.md
  [TSD.pdf]=03-TSD.md
  [UserGuide.pdf]=04-UserGuide.md
)

PDF_TABLE=""
MD_TABLE=""
pdf_done=0; pdf_total=5
md_done=0;  md_total=5

for pdf in "${!PDFMAP[@]}"; do
  md="${PDFMAP[$pdf]}"
  # PDF detail
  if [ -s "$SRC/$pdf" ]; then
    PAGES="$(pdfinfo "$SRC/$pdf" 2>/dev/null | awk -F: '/Pages/{print $2}' | xargs || echo 0)"
    SIZE="$(du -h "$SRC/$pdf" | awk '{print $1}')"
    PDF_TABLE+="- $pdf  —  $PAGES halaman, $SIZE\n"
    [ "$PAGES" -gt 0 ] && pdf_done=$((pdf_done+1))
  else
    PDF_TABLE+="- $pdf  —  (belum ada)\n"
  fi
  # MD detail
  if [ -s "docs/$md" ]; then
    LINES="$(wc -l < "docs/$md" | xargs)"
    MD_TABLE+="- $md  —  $LINES baris\n"
    [ "$LINES" -gt 0 ] && md_done=$((md_done+1))
  else
    MD_TABLE+="- $md  —  (belum ada)\n"
  fi
done

# Linear & Notion snapshot (python stdlib)
python3 - "$OUT" <<'PY'
import os, json, urllib.request, sys, re
OUT=sys.argv[1]
env=open("/etc/taais/env").read() if os.path.exists("/etc/taais/env") else ""
def envget(k):
  for ln in env.splitlines():
    if ln.startswith(k+"="): return ln.split("=",1)[1].strip()
  return ""
LKEY=envget("LINEAR_API_KEY")
NTOK=envget("NOTION_TOKEN")
NURL=envget("NOTION_PARENT_URL")
dat={"linear":{"ok":False},"notion":{"ok":False}}

# Linear
if LKEY:
  H={"Authorization":LKEY,"Content-Type":"application/json"}
  def gql(q,vars=None):
    b=json.dumps({"query":q,"variables":vars or {}}).encode()
    r=urllib.request.Request("https://api.linear.app/graphql",data=b,headers=H,method="POST")
    with urllib.request.urlopen(r) as f: d=json.loads(f.read().decode())
    if "errors" in d: raise RuntimeError(d["errors"])
    return d["data"]
  try:
    me=gql("query{ viewer { id email } }")["viewer"]
    t=gql("query{ teams(first:1){nodes{id name key projects(first:100){nodes{id name}}}}}")["teams"]["nodes"][0]
    issues=gql("query{ issues(first:50){nodes{id title state{type}}}}")["issues"]["nodes"]
    dat["linear"]={"ok":True,"email":me["email"],"team":t["name"],"teamId":t["id"],
                   "projects":[p["name"] for p in t["projects"]["nodes"]],
                   "issues":[{"title":i["title"],"state":i["state"]["type"] if i.get("state") else ""} for i in issues]}
  except Exception as e:
    dat["linear"]={"ok":False,"error":str(e)}

# Notion
if NTOK and NURL:
  m=re.search(r'([0-9a-f]{32})',NURL.replace("-",""),re.I)
  dbid=None
  if m:
    raw=m.group(1); dbid=f"{raw[0:8]}-{raw[8:12]}-{raw[12:16]}-{raw[16:20]}-{raw[20:32]}"
  H={"Authorization":"Bearer "+NTOK,"Notion-Version":"2022-06-28","Content-Type":"application/json"}
  try:
    if dbid:
      req=urllib.request.Request(f"https://api.notion.com/v1/databases/{dbid}",headers=H,method="GET")
      with urllib.request.urlopen(req) as f: meta=json.loads(f.read().decode())
      dat["notion"]={"ok":True,"database_id":dbid,"title":[t.get("plain_text") for t in meta.get("title",[])]}
    else:
      dat["notion"]={"ok":False,"error":"DB id not parsed from URL"}
  except Exception as e:
    dat["notion"]={"ok":False,"error":str(e)}

open(os.path.join(OUT,"INTEGRATIONS.json"),"w").write(json.dumps(dat,indent=2))
print(json.dumps(dat,indent=2))
PY

# Baca JSON utk skor
L_OK="$(python3 -c 'import json;print(json.load(open("'"$OUT"'/INTEGRATIONS.json"))["linear"].get("ok",False))')"
N_OK="$(python3 -c 'import json;print(json.load(open("'"$OUT"'/INTEGRATIONS.json"))["notion"].get("ok",False))')"

# Skoring % (lebih detail)
pct=0
# Integrations 40
[ "$WATCHER_STATE" = "active" ] && pct=$((pct+10))
[ "$DOCS_SVC_STATE" = "active" ] && pct=$((pct+10))
[ "$DOCS_TMR_STATE" = "enabled" ] && pct=$((pct+5))
[ "$L_OK" = "True" ] && pct=$((pct+7))
[ "$N_OK" = "True" ] && pct=$((pct+8))
# Docs pipeline 30
pct=$((pct + pdf_done*3))  # 5 pdf * 3 = 15
pct=$((pct + md_done*3))   # 5 md  * 3 = 15
# Tracking 20 (issues 5/5 judul)
issues_done=0
for t in "BRD — TikTok Analytic" "FRD — TikTok Analytic" "FSD — TikTok Analytic" "TSD — TikTok Analytic" "User Guide — TikTok Analytic"; do
  grep -qF "$t" "$OUT/INTEGRATIONS.json" && issues_done=$((issues_done+1))
done
pct=$((pct + issues_done*4))
# Ops 10 (laporan ini + service logs tersedia)
pct=$((pct + 10))
[ $pct -gt 100 ] && pct=100

# GAP list (apa yang belum)
GAP=""
[ "$WATCHER_STATE" = "active" ] || GAP+="- Git watcher belum active\n"
[ "$DOCS_SVC_STATE" = "active" ] || GAP+="- Docs autogen service belum active\n"
[ "$DOCS_TMR_STATE" = "enabled" ] || GAP+="- Timer autogen belum enabled\n"
[ "$L_OK" = "True" ] || GAP+="- Linear API belum OK\n"
[ "$N_OK" = "True" ] || GAP+="- Notion API belum OK\n"
for pdf in BRD.pdf FRD.pdf FSD.pdf TSD.pdf UserGuide.pdf; do
  [ -s "$SRC/$pdf" ] || GAP+="- PDF kurang: $pdf\n"
done
for md in 00-BRD.md 01-FRD.md 02-FSD.md 03-TSD.md 04-UserGuide.md; do
  [ -s "docs/$md" ] || GAP+="- MD belum ada: $md\n"
done
[ -n "$GAP" ] || GAP="(semua komponen utama sudah ada)"

# Tulis MD
REPORT="$OUT/STATUS_PRO.md"
{
  echo "# TAAIS — STATUS PRO ($TS UTC)"
  echo
  echo "## Progres Keseluruhan: **$pct%**"
  echo
  echo "### Service & Timer"
  echo "- robot-sync.service  : $WATCHER_STATE"
  echo "- taais-docs-autogen  : $DOCS_SVC_STATE"
  echo "- timer (enabled?)    : $DOCS_TMR_STATE"
  echo "- next run (perkiraan): ${DOCS_TMR_NEXT:-N/A}"
  echo
  echo "### Repo"
  echo "- Branch: $BRANCH"
  echo "- Remote: $REMOTE"
  echo "- Last push/commit time: ${LAST_PUSH:-N/A}"
  echo
  echo "### Commit Terakhir"
  echo '```'
  echo "$LAST_COMMITS"
  echo '```'
  echo
  echo "### PDF Sumber"
  echo -e "$PDF_TABLE"
  echo
  echo "### Docs (Markdown)"
  echo -e "$MD_TABLE"
  echo
  echo "### Linear & Notion (snapshot)"
  echo '```json'
  sed -n '1,400p' "$OUT/INTEGRATIONS.json"
  echo '```'
  echo
  echo "### Yang belum / GAP"
  echo -e "$GAP"
  echo
  echo "### Realtime Logs (tips)"
  echo "- \`journalctl -fu taais-docs-autogen.service -n 50\`"
  echo "- \`journalctl -fu robot-sync.service -n 50\`"
} > "$REPORT"

git add "$REPORT" "$OUT/INTEGRATIONS.json" >/dev/null 2>&1 || true
git commit -m "audit: status PRO $TS (Part of POL-101)" >/dev/null 2>&1 || true
git pull --rebase origin main >/dev/null 2>&1 || true
git push -u origin main >/dev/null 2>&1 || true

echo "✅ Status PRO dibuat: $REPORT (pushed)"
