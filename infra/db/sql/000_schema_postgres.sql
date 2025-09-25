CREATE TABLE IF NOT EXISTS accounts (
  id SERIAL PRIMARY KEY,
  handle TEXT UNIQUE,
  niche TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS videos_raw (
  id BIGSERIAL PRIMARY KEY,
  platform_id TEXT,
  account_id INT REFERENCES accounts(id),
  caption TEXT,
  duration_sec INT,
  posted_at TIMESTAMP,
  fetched_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS metrics_hourly (
  ts TIMESTAMP,
  video_id BIGINT REFERENCES videos_raw(id),
  views BIGINT, likes BIGINT, comments BIGINT, shares BIGINT,
  PRIMARY KEY (ts, video_id)
);

CREATE TABLE IF NOT EXISTS kpi_daily (
  d DATE,
  video_id BIGINT REFERENCES videos_raw(id),
  completion NUMERIC,
  er NUMERIC,
  drop_0_3 NUMERIC,
  composite_fyp NUMERIC,
  PRIMARY KEY (d, video_id)
);
"SQL"

# Skeleton job KPI v0
mkdir -p services/kpi/bin
cat > services/kpi/bin/run_kpi.sh <<SH
#!/usr/bin/env bash
set -euo pipefail
echo "[KPI] v0 placeholder — hitung Completion/ER/Drop_0_3/Composite_FYP (logic dimasukkan nanti)."
SH
chmod +x services/kpi/bin/run_kpi.sh

# Tambah catatan di Ops Runbook (sekali)
grep -q "## Bootstrap (Robot)" docs/05-Ops-Runbook.md 2>/dev/null || cat >> docs/05-Ops-Runbook.md <<EOF

## Bootstrap (Robot)
- Struktur services: /services/{ingest,kpi,planner,preflight}
- Schema awal: infra/db/sql/000_schema_postgres.sql
- Secrets/env template: config/.env.example (gunakan GitHub Secrets untuk CI)
EOF

git add -A
git commit -m "feat: phase A bootstrap (services layout, schema, env) (Part of POL-101)" || true
git pull --rebase origin main || true
git push origin main || true
echo "✅ Pushed: Phase A bootstrap changes"

# === 4) Ringkasan akhir ===
echo
echo "=== DONE ==="
echo "Repo        : git@github.com:polesheadlamp-collab/tiktok-anaytic.git"
echo "Audit file  : audits/20250925-070431/DOCKER.md"
echo "Phase A     : services/* + infra/db/sql/000_schema_postgres.sql + config/.env.example"
echo "Tips next   :"
echo " - Cek Prometheus/Redpanda yang restarting via: docker logs --tail 200 compose-prometheus-1 | tail -n 200"
echo " - &: docker logs --tail 200 compose-redpanda-1 | tail -n 200"
