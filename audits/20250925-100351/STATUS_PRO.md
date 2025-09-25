# TAAIS — STATUS PRO (20250925-100351 UTC)

## Progres Keseluruhan: **70%**

### Service & Timer
- robot-sync.service  : active
- taais-docs-autogen  : inactive
- timer (enabled?)    : enabled
- next run (perkiraan): 10:15:52 UTC 12min

### Repo
- Branch: main
- Remote: git@github.com:polesheadlamp-collab/tiktok-anaytic.git
- Last push/commit time: 2025-09-25 09:51:42 +0000

### Commit Terakhir
```
fa2a1a8 2025-09-25 09:51:42 +0000 docs: auto-sync from PDF (Part of POL-101)
7525ea2 2025-09-25 09:33:32 +0000 audit: status PRO 20250925-093329 (Part of POL-101)
ebada2e 2025-09-25 09:33:23 +0000 audit: status PRO 20250925-093321 (Part of POL-101)
ff6df83 2025-09-25 09:27:28 +0000 audit: status dashboard 20250925-092726 (Part of POL-101)
2e147b4 2025-09-25 09:15:43 +0000 docs: auto-sync from PDF (Part of POL-101)
```

### PDF Sumber
- BRD.pdf  —  1 halaman, 48K
- FRD.pdf  —  1 halaman, 32K
- TSD.pdf  —  4 halaman, 44K
- UserGuide.pdf  —  8 halaman, 56K
- FSD.pdf  —  7 halaman, 56K


### Docs (Markdown)
- 00-BRD.md  —  130 baris
- 01-FRD.md  —  104 baris
- 03-TSD.md  —  58 baris
- 04-UserGuide.md  —  124 baris
- 02-FSD.md  —  98 baris


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


### Realtime Logs (tips)
- `journalctl -fu taais-docs-autogen.service -n 50`
- `journalctl -fu robot-sync.service -n 50`
