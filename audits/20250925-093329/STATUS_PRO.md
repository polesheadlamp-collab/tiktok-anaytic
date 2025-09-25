# TAAIS — STATUS PRO (20250925-093329 UTC)

## Progres Keseluruhan: **55%**

### Service & Timer
- robot-sync.service  : active
- taais-docs-autogen  : inactive
- timer (enabled?)    : enabled
- next run (perkiraan): 09:45:45 UTC 12min

### Repo
- Branch: main
- Remote: git@github.com:polesheadlamp-collab/tiktok-anaytic.git
- Last push/commit time: 2025-09-25 09:33:23 +0000

### Commit Terakhir
```
ebada2e 2025-09-25 09:33:23 +0000 audit: status PRO 20250925-093321 (Part of POL-101)
ff6df83 2025-09-25 09:27:28 +0000 audit: status dashboard 20250925-092726 (Part of POL-101)
2e147b4 2025-09-25 09:15:43 +0000 docs: auto-sync from PDF (Part of POL-101)
d90a3ae 2025-09-25 08:40:05 +0000 docs(notion): seed 5 docs & index (robot)
df6fa01 2025-09-25 08:34:01 +0000 docs(notion): seed 5 docs & index (robot)
```

### PDF Sumber
- BRD.pdf  —  (belum ada)
- FRD.pdf  —  (belum ada)
- TSD.pdf  —  (belum ada)
- UserGuide.pdf  —  (belum ada)
- FSD.pdf  —  (belum ada)


### Docs (Markdown)
- 00-BRD.md  —  7 baris
- 01-FRD.md  —  2 baris
- 03-TSD.md  —  7 baris
- 04-UserGuide.md  —  7 baris
- 02-FSD.md  —  7 baris


### Linear & Notion (snapshot)
```json
{
  "linear": {
    "ok": true,
    "email": "polesheadlamp.id@gmail.com",
    "team": "Polesheadlamp",
    "teamId": "e82946e2-5677-483c-9a90-66d1aa4a49fc",
    "projects": [
      "TAAIS \u2014 TikTok Analytic"
    ],
    "issues": [
      {
        "title": "User Guide \u2014 TikTok Analytic",
        "state": "backlog"
      },
      {
        "title": "TSD \u2014 TikTok Analytic",
        "state": "backlog"
      },
      {
        "title": "FSD \u2014 TikTok Analytic",
        "state": "backlog"
      },
      {
        "title": "FRD \u2014 TikTok Analytic",
        "state": "backlog"
      },
      {
        "title": "BRD \u2014 TikTok Analytic",
        "state": "backlog"
      },
      {
        "title": "Import your data (4)",
        "state": "unstarted"
      },
      {
        "title": "Set up your teams (2)",
        "state": "unstarted"
      },
      {
        "title": "Connect your tools (3)",
        "state": "unstarted"
      },
      {
        "title": "Get familiar with Linear (1)",
        "state": "unstarted"
      }
    ]
  },
  "notion": {
    "ok": true,
    "database_id": "2795f3b2-8c5d-804d-addd-d92d6b959934",
    "title": [
      "tiktok analytic"
    ]
  }
}```

### Yang belum / GAP
- Docs autogen service belum active
- PDF kurang: BRD.pdf
- PDF kurang: FRD.pdf
- PDF kurang: FSD.pdf
- PDF kurang: TSD.pdf
- PDF kurang: UserGuide.pdf


### Realtime Logs (tips)
- `journalctl -fu taais-docs-autogen.service -n 50`
- `journalctl -fu robot-sync.service -n 50`
