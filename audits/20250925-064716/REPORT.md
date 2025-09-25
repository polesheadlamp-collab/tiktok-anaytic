# TAAIS Robot Audit — 20250925-064716 (UTC)

## 1. Sistem
- Hostname: srv1000158
- OS: Linux srv1000158 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
- Distro: Ubuntu 22.04.5 LTS
- Uptime: up 1 day, 13 hours, 9 minutes

### Disk & Mem
#### df -h
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           392M  2.0M  390M   1% /run
/dev/sda1        49G   36G   14G  73% /
tmpfs           2.0G     0  2.0G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/sda15      105M  6.1M   99M   6% /boot/efi
tmpfs           392M  4.0K  392M   1% /run/user/1001

#### free -h
               total        used        free      shared  buff/cache   available
Mem:           3.8Gi       2.1Gi       225Mi        15Mi       1.5Gi       1.5Gi
Swap:             0B          0B          0B

## 2. Tooling versi
- git: git version 2.34.1
- node: v18.20.8
- npm : 10.8.2
- python3: Python 3.10.12
- docker: Docker version 28.4.0, build d8eb465
- docker compose: Docker Compose version v2.39.4

## 3. Service robot
### systemctl status robot-sync.service
● robot-sync.service - Robot Git Sync Watcher
     Loaded: loaded (/etc/systemd/system/robot-sync.service; enabled; vendor preset: enabled)
     Active: active (running) since Thu 2025-09-25 06:26:37 UTC; 20min ago
   Main PID: 1178252 (bash)
      Tasks: 3 (limit: 4646)
     Memory: 1.0M
        CPU: 17ms
     CGroup: /system.slice/robot-sync.service
             ├─1178252 bash /usr/local/bin/robot-sync-watch.sh
             ├─1178263 inotifywait -m -r -e close_write,create,delete,move --exclude "(.git|node_modules|__pycache__|\\.venv|env|data/|datasets/)" /home/devops/tiktok-analytic
             └─1178264 bash /usr/local/bin/robot-sync-watch.sh

### journalctl (24h, tail 200)
-- No entries --

## 4. Crontab user (devops)
no crontab for devops
(no crontab)

## 5. Proyek Utama
- Lokasi: /home/devops/tiktok-analytic

### Git Remote
origin	git@github.com:polesheadlamp-collab/tiktok-anaytic.git (fetch)
origin	git@github.com:polesheadlamp-collab/tiktok-anaytic.git (push)

### Git Branch & HEAD
main
00b36da

### Git Status

### 20 Commit Terakhir
00b36da chore: bootstrap factory files (Part of POL-101)
6b25126 Create gitignore
978b754 Initial commit

### Struktur Direktori (top-level)
.
./data
./data/samples
./docs
./infra
./notebooks
./src

### File Penting (preview)
#### README.md
# TikTok Analytic — Factory Mode
Pipeline: VPS → GitHub (watcher per detik) → Linear (PR automation) → Notion (docs).
Lihat docs/ untuk 5 dokumen pakem. Commit gunakan: "Fixes POL-101" atau "Part of POL-101".

#### .gitignore
# OS & editor
.DS_Store
Thumbs.db
*.swp
*.swo
.vscode/
.idea/
*.log

# Secrets/env
.env
.env.*
secrets/
*.key
*.pem
*.p12
*.crt
*.token
*.credentials

# Data/artifacts (kecuali sample)
data/
datasets/
*.csv
*.parquet
*.xlsx
*.mp4
*.jpg
*.png
!data/samples/**

# Python
__pycache__/
*.py[cod]
.venv/
env/
dist/
build/
*.egg-info/

# Node
node_modules/
npm-debug.log*
yarn-error.log*

### docs/ (daftar file)
docs/01-FRD.md
docs/02-Data-Contract.md
docs/03-UI-Contract.md
docs/04-DoD-Gates.md
docs/05-Ops-Runbook.md

### Statistik ekstensi file (top 20)
      6 md
      1 yml
      1 log
      1 gitignore
      1 ./license
      1 ./gitignore

## 6. Docker
### docker ps
CONTAINER ID   IMAGE                                 COMMAND                  CREATED        STATUS                          PORTS                                                                                                NAMES
0959885dadce   grafana/grafana:10.4.5                "/run.sh"                3 hours ago    Up 2 hours                      0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp                                                          grafana
48490ba2f96e   clickhouse/clickhouse-server:23.8     "/entrypoint.sh"         27 hours ago   Up 27 hours                     9009/tcp, 0.0.0.0:8213->8123/tcp, [::]:8213->8123/tcp, 0.0.0.0:9005->9000/tcp, [::]:9005->9000/tcp   clickhouse
3ecd2bf963e3   minio/minio:latest                    "/usr/bin/docker-ent…"   28 hours ago   Up 28 hours                     0.0.0.0:9100->9000/tcp, [::]:9100->9000/tcp, 0.0.0.0:9101->9001/tcp, [::]:9101->9001/tcp             minio
3411941bb9e9   apache/airflow:2.10.2                 "/usr/bin/dumb-init …"   37 hours ago   Up 39 seconds                   0.0.0.0:8123->8080/tcp, [::]:8123->8080/tcp                                                          compose-airflow-1
22160556c6d5   ghcr.io/mlflow/mlflow:latest          "mlflow server --bac…"   37 hours ago   Up 37 hours                     0.0.0.0:5000->5000/tcp, [::]:5000->5000/tcp                                                          compose-mlflow-1
4fea5735319a   prom/prometheus:latest                "/bin/prometheus --c…"   37 hours ago   Restarting (2) 2 seconds ago                                                                                                         compose-prometheus-1
9ca3785786b0   redpandadata/redpanda:latest          "/entrypoint.sh 'red…"   37 hours ago   Restarting (1) 20 seconds ago                                                                                                        compose-redpanda-1
dba3aa39b739   clickhouse/clickhouse-server:latest   "/entrypoint.sh"         37 hours ago   Up 37 hours                     8123/tcp, 9009/tcp, 0.0.0.0:9009->9000/tcp, [::]:9009->9000/tcp                                      compose-clickhouse-1
cbdbc523a053   minio/minio:latest                    "/usr/bin/docker-ent…"   37 hours ago   Up 37 hours                     0.0.0.0:9000-9001->9000-9001/tcp, [::]:9000-9001->9000-9001/tcp                                      compose-minio-1
d3d39d5b5529   traefik:v3.1                          "/entrypoint.sh --ap…"   37 hours ago   Up 37 hours                     0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp                     compose-traefik-1
35b79c33a7bc   postgres:16                           "docker-entrypoint.s…"   37 hours ago   Up 37 hours                     5432/tcp                                                                                             compose-postgres-1
3d7cda70f4ba   redis:7                               "docker-entrypoint.s…"   37 hours ago   Up 37 hours                     6379/tcp                                                                                             compose-redis-1
9d646cdb10b6   hashicorp/vault:1.17                  "docker-entrypoint.s…"   37 hours ago   Up 37 hours                     0.0.0.0:8200->8200/tcp, [::]:8200->8200/tcp                                                          compose-vault-1

### docker images (top 20)
REPOSITORY                     TAG       SIZE
taais/scraper                  latest    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    3.82GB
<none>                         <none>    2.09GB
prom/prometheus                latest    313MB
clickhouse/clickhouse-server   latest    794MB
redpandadata/redpanda          latest    424MB
ghcr.io/mlflow/mlflow          latest    885MB
postgres                       16        451MB
minio/minio                    latest    175MB
minio/mc                       latest    84.9MB
grafana/grafana                latest    723MB
redis                          7         117MB
traefik                        v3.1      178MB
hashicorp/vault                1.17      448MB

## 8. Ringkasan Cepat
- Audit dir: /home/devops/_robot_audit/20250925-064716
- Repo: git@github.com:polesheadlamp-collab/tiktok-anaytic.git
- Service robot: active

