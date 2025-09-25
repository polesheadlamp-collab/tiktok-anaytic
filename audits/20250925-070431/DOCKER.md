# Docker Audit — 20250925-070431 (UTC)

## docker compose ls
NAME                STATUS                      CONFIG FILES
compose             restarting(2), running(8)   /home/devops/taais/compose/docker-compose.yml

## Running containers (summary)
NAMES                  IMAGE                                 STATUS                          PORTS
grafana                grafana/grafana:10.4.5                Up 2 hours                      0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp
clickhouse             clickhouse/clickhouse-server:23.8     Up 27 hours                     9009/tcp, 0.0.0.0:8213->8123/tcp, [::]:8213->8123/tcp, 0.0.0.0:9005->9000/tcp, [::]:9005->9000/tcp
minio                  minio/minio:latest                    Up 28 hours                     0.0.0.0:9100->9000/tcp, [::]:9100->9000/tcp, 0.0.0.0:9101->9001/tcp, [::]:9101->9001/tcp
compose-airflow-1      apache/airflow:2.10.2                 Up About a minute               0.0.0.0:8123->8080/tcp, [::]:8123->8080/tcp
compose-mlflow-1       ghcr.io/mlflow/mlflow:latest          Up 37 hours                     0.0.0.0:5000->5000/tcp, [::]:5000->5000/tcp
compose-prometheus-1   prom/prometheus:latest                Restarting (2) 6 seconds ago    
compose-redpanda-1     redpandadata/redpanda:latest          Restarting (1) 17 seconds ago   
compose-clickhouse-1   clickhouse/clickhouse-server:latest   Up 37 hours                     8123/tcp, 9009/tcp, 0.0.0.0:9009->9000/tcp, [::]:9009->9000/tcp
compose-minio-1        minio/minio:latest                    Up 37 hours                     0.0.0.0:9000-9001->9000-9001/tcp, [::]:9000-9001->9000-9001/tcp
compose-traefik-1      traefik:v3.1                          Up 37 hours                     0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp
compose-postgres-1     postgres:16                           Up 37 hours                     5432/tcp
compose-redis-1        redis:7                               Up 37 hours                     6379/tcp
compose-vault-1        hashicorp/vault:1.17                  Up 37 hours                     0.0.0.0:8200->8200/tcp, [::]:8200->8200/tcp

## Projects by label com.docker.compose.project
- compose-airflow-1  →  project=compose service=airflow
- compose-mlflow-1  →  project=compose service=mlflow
- compose-prometheus-1  →  project=compose service=prometheus
- compose-redpanda-1  →  project=compose service=redpanda
- compose-clickhouse-1  →  project=compose service=clickhouse
- compose-minio-1  →  project=compose service=minio
- compose-traefik-1  →  project=compose service=traefik
- compose-postgres-1  →  project=compose service=postgres
- compose-redis-1  →  project=compose service=redis
- compose-vault-1  →  project=compose service=vault

## Containers restarting (tail logs)
### compose-prometheus-1 — logs (tail 300)

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffddf4c8f79, 0xb}, 0x14, 0xc00054a050)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:44:13.604Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:44:13.606Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:44:13.606Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:44:13.607Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:44:13.607Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:44:13.607Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:44:13.613Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcde078f79, 0xb}, 0x14, 0xc000548050)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:45:14.027Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:45:14.028Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:45:14.028Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:45:14.028Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:45:14.028Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:45:14.029Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:45:14.029Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcdbdfff79, 0xb}, 0x14, 0xc000550050)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:46:14.532Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:46:14.542Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:46:14.542Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:46:14.545Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:46:14.545Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:46:14.545Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:46:14.546Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcdfc49f79, 0xb}, 0x14, 0xc000548000)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:47:14.966Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:47:14.970Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:47:14.970Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:47:14.971Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:47:14.971Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:47:14.971Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:47:14.977Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcbc7c8f79, 0xb}, 0x14, 0xc000552ae0)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:48:15.676Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:48:15.677Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:48:15.678Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:48:15.678Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:48:15.679Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:48:15.679Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:48:15.693Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffd5500ff79, 0xb}, 0x14, 0xc00054aa80)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:49:16.302Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:49:16.303Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:49:16.303Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:49:16.306Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:49:16.306Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:49:16.306Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:49:16.309Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcb663af79, 0xb}, 0x14, 0xc000588290)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:50:17.023Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:50:17.024Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:50:17.024Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:50:17.024Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:50:17.024Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:50:17.024Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:50:17.025Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffc98e5ef79, 0xb}, 0x14, 0xc00054e000)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:51:17.463Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:51:17.469Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:51:17.469Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:51:17.470Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:51:17.470Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:51:17.470Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:51:17.470Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffd34ba9f79, 0xb}, 0x14, 0xc00054a040)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:52:17.895Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:52:17.897Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:52:17.898Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:52:17.898Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:52:17.898Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:52:17.898Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:52:17.902Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffeb33caf79, 0xb}, 0x14, 0xc000550040)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:53:18.865Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:53:18.867Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:53:18.867Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:53:18.867Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:53:18.867Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:53:18.868Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:53:18.869Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffe3ee4bf79, 0xb}, 0x14, 0xc000550000)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:54:19.492Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:54:19.495Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:54:19.496Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:54:19.496Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:54:19.496Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:54:19.496Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:54:19.497Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffe0b1caf79, 0xb}, 0x14, 0xc000548050)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:55:20.370Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:55:20.370Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:55:20.371Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:55:20.374Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:55:20.374Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:55:20.374Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:55:20.380Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7fff6a949f79, 0xb}, 0x14, 0xc000588290)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:56:21.073Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:56:21.075Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:56:21.076Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:56:21.076Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:56:21.076Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:56:21.076Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:56:21.091Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcd8f49f79, 0xb}, 0x14, 0xc00053aa40)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:57:21.636Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:57:21.640Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:57:21.640Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:57:21.641Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:57:21.641Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:57:21.641Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:57:21.646Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffd5e541f79, 0xb}, 0x14, 0xc00058c270)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:58:22.240Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:58:22.240Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:58:22.241Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:58:22.241Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:58:22.241Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:58:22.242Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:58:22.245Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffce861ff79, 0xb}, 0x14, 0xc00058c280)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T06:59:22.663Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T06:59:22.665Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T06:59:22.665Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T06:59:22.665Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T06:59:22.666Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T06:59:22.666Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T06:59:22.670Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffdf829ff79, 0xb}, 0x14, 0xc000552040)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T07:00:23.240Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T07:00:23.241Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T07:00:23.241Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T07:00:23.241Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T07:00:23.242Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T07:00:23.242Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T07:00:23.249Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffde7545f79, 0xb}, 0x14, 0xc000588290)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T07:01:23.817Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T07:01:23.818Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T07:01:23.818Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T07:01:23.818Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T07:01:23.819Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T07:01:23.819Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T07:01:23.830Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffe5ab79f79, 0xb}, 0x14, 0xc000549ab0)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T07:02:24.219Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T07:02:24.222Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T07:02:24.222Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T07:02:24.222Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T07:02:24.223Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T07:02:24.223Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T07:02:24.223Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffec450af79, 0xb}, 0x14, 0xc00054a040)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T07:03:24.643Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T07:03:24.646Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T07:03:24.646Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T07:03:24.650Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T07:03:24.650Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T07:03:24.650Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T07:03:24.653Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffefda11f79, 0xb}, 0x14, 0xc000552040)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d
time=2025-09-25T07:04:25.268Z level=INFO source=main.go:1545 msg="updated GOGC" old=100 new=75
time=2025-09-25T07:04:25.274Z level=INFO source=main.go:677 msg="Leaving GOMAXPROCS=1: CPU quota undefined" component=automaxprocs
time=2025-09-25T07:04:25.275Z level=INFO source=memlimit.go:198 msg="GOMEMLIMIT is updated" component=automemlimit package=github.com/KimMachineGun/automemlimit/memlimit GOMEMLIMIT=3690952704 previous=9223372036854775807
time=2025-09-25T07:04:25.275Z level=INFO source=main.go:719 msg="No time or size retention was set so using the default time retention" duration=15d
time=2025-09-25T07:04:25.277Z level=INFO source=main.go:770 msg="Starting Prometheus Server" mode=server version="(version=3.6.0, branch=HEAD, revision=491734606591ef8c188f5489c70380805bc868c0)"
time=2025-09-25T07:04:25.278Z level=INFO source=main.go:775 msg="operational information" build_context="(go=go1.24.7, platform=linux/amd64, user=root@bfdf1aa26e4d, date=20250921-19:51:16, tags=netgo,builtinassets)" host_details="(Linux 5.15.0-153-generic #163-Ubuntu SMP Thu Aug 7 16:37:18 UTC 2025 x86_64 4fea5735319a (none))" fd_limits="(soft=1048576, hard=1048576)" vm_limits="(soft=unlimited, hard=unlimited)"
time=2025-09-25T07:04:25.279Z level=ERROR source=query_logger.go:113 msg="Error opening query log file" component=activeQueryTracker file=/prometheus/queries.active err="open /prometheus/queries.active: permission denied"
panic: Unable to create mmap-ed active query log

goroutine 1 [running]:
github.com/prometheus/prometheus/promql.NewActiveQueryTracker({0x7ffcbdadef79, 0xb}, 0x14, 0xc000552000)
	/app/promql/query_logger.go:145 +0x345
main.main()
	/app/cmd/prometheus/main.go:855 +0x844d

### compose-redpanda-1 — logs (tail 300)
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.leader_balancer_transfer_limit_per_shard:512	- Per shard limit for in-progress leadership transfers.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.legacy_group_offset_retention_enabled:0	- Group offset retention is enabled by default starting in Redpanda version 23.1. To enable offset retention after upgrading from an older version, set this option to true.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.legacy_permit_unsafe_log_operation:1	- Flag to enable a Redpanda cluster operator to use unsafe control characters within strings, such as consumer group names or user names. This flag applies only for Redpanda clusters that were originally on version 23.1 or earlier and have been upgraded to version 23.2 or later. Starting in version 23.2, newly-created Redpanda clusters ignore this property.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.legacy_unsafe_log_warning_interval_sec:300s	- Period at which to log a warning about using unsafe strings containing control characters. If unsafe strings are permitted by `legacy_permit_unsafe_log_operation`, a warning will be logged at an interval specified by this property.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_cleanup_policy:delete	- Default cleanup policy for topic logs. The topic property `cleanup.policy` overrides the value of `log_cleanup_policy` at the topic level.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compaction_adjacent_merge_self_compaction_count:	- 
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compaction_interval_ms:10000ms	- How often to trigger background compaction.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compaction_merge_max_ranges:{nullopt}	- The maximum number of ranges of segments that can be processed in a single round of adjacent segment compaction. If `null` (the default value), no maximum is imposed on the number of ranges that can be processed at once. A value below 1 effectively disables adjacent merge compaction.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compaction_merge_max_segments_per_range:{nullopt}	- The maximum number of segments that can be combined into a single segment during an adjacent merge operation. If `null` (the default value), no maximum is imposed on the number of segments that can be combined at once. A value below 2 effectively disables adjacent merge compaction.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compaction_pause_use_sliding_window:0	- Pause use of sliding window compaction. This should only be toggled to `true` when it is desired to force adjacent segment compaction. The memory reserved by `storage_compaction_key_map_memory` is not freed when this is set to `true`.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compaction_use_sliding_window:1	- Use sliding window compaction.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_compression_type:producer	- Default topic compression type. The topic property `compression.type` overrides the value of `log_compression_type` at the topic level.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_disable_housekeeping_for_tests:0	- Disables the housekeeping loop for local storage. This property is used to simplify testing, and should not be set in production.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_message_timestamp_alert_after_ms:7200000ms	- Threshold in milliseconds for alerting on messages with a timestamp after the broker's time, meaning the messages are in the future relative to the broker's clock.
INFO  2025-09-25 07:04:13,751 [shard 0:main] main - application.cc:873 - redpanda.log_message_timestamp_alert_before_ms:{nullopt}	- Threshold in milliseconds for alerting on messages with a timestamp before the broker's time, meaning the messages are in the past relative to the broker's clock. To disable this check, set to `null`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_message_timestamp_type:CreateTime	- Default timestamp type for topic messages (CreateTime or LogAppendTime). The topic property `message.timestamp.type` overrides the value of `log_message_timestamp_type` at the topic level.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_retention_ms:604800000ms	- The amount of time to keep a log file before deleting it (in milliseconds). If set to `-1`, no time limit is applied. This is a cluster-wide default when a topic does not set or disable `retention.ms`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_ms:{1209600000ms}	- Default lifetime of log segments. If `null`, the property is disabled, and no default lifetime is set. Any value under 60 seconds (60000 ms) is rejected. This property can also be set in the Kafka API using the Kafka-compatible alias, `log.roll.ms`. The topic property `segment.ms` overrides the value of `log_segment_ms` at the topic level.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_ms_max:31536000000ms	- Upper bound on topic `segment.ms`: higher values will be clamped to this value.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_ms_min:600000ms	- Lower bound on topic `segment.ms`: lower values will be clamped to this value.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_size:134217728	- Default log segment size in bytes for topics which do not set segment.bytes
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_size_jitter_percent:5	- Random variation to the segment size limit used for each partition.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_size_max:{nullopt}	- Upper bound on topic `segment.bytes`: higher values will be clamped to this limit.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.log_segment_size_min:{1}	- Lower bound on topic `segment.bytes`: lower values will be clamped to this limit.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.lz4_decompress_reusable_buffers_disabled:0	- Disable reusable preallocated buffers for LZ4 decompression.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_compacted_log_segment_size:536870912	- Maximum compacted segment size after consolidation.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_compaction_lag_ms:9223372036854ms	- For a compacted topic, the maximum time a message remains ineligible for compaction. The topic property `max.compaction.lag.ms` overrides this property.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_concurrent_producer_ids:18446744073709551615	- Maximum number of the active producers sessions. When the threshold is passed, Redpanda terminates old sessions. When an idle producer corresponding to the terminated session wakes up and produces, its message batches are rejected, and an out of order sequence error is emitted. Consumers don't affect this setting.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_in_flight_pandaproxy_requests_per_shard:500	- Maximum number of in-flight HTTP requests to HTTP Proxy permitted per shard.  Any additional requests above this limit will be rejected with a 429 error.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_in_flight_schema_registry_requests_per_shard:500	- Maximum number of in-flight HTTP requests to Schema Registry permitted per shard.  Any additional requests above this limit will be rejected with a 429 error.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_kafka_throttle_delay_ms:30000ms	- Fail-safe maximum throttle delay on Kafka requests.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_transactions_per_coordinator:18446744073709551615	- Specifies the maximum number of active transaction sessions per coordinator. When the threshold is passed Redpanda terminates old sessions. When an idle producer corresponding to the terminated session wakes up and produces, it leads to its batches being rejected with invalid producer epoch or invalid_producer_id_mapping error (depends on the transaction execution phase).
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.max_version:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.members_backend_retry_ms:5000ms	- Time between members backend reconciliation loop retries.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.memory_abort_on_alloc_failure:1	- If `true`, the Redpanda process will terminate immediately when an allocation cannot be satisfied due to memory exhaustion. If false, an exception is thrown.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.memory_enable_memory_sampling:1	- When `true`, memory allocations are sampled and tracked. A sampled live set of allocations can then be retrieved from the Admin API. Additionally, Redpanda will periodically log the top-n allocation sites.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metadata_dissemination_interval_ms:3000ms	- Interval for metadata dissemination batching.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metadata_dissemination_retries:30	- Number of attempts to look up a topic's metadata-like shard before a request fails. This configuration controls the number of retries that request handlers perform when internal topic metadata (for topics like tx, consumer offsets, etc) is missing. These topics are usually created on demand when users try to use the cluster for the first time and it may take some time for the creation to happen and the metadata to propagate to all the brokers (particularly the broker handling the request). In the mean time Redpanda waits and retry. This configuration controls the number retries.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metadata_dissemination_retry_delay_ms:320ms	- Delay before retrying a topic lookup in a shard or other meta tables.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metadata_status_wait_timeout_ms:2000ms	- Maximum time to wait in metadata request for cluster health to be refreshed.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metrics_reporter_report_interval:86400000ms	- Cluster metrics reporter report interval.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metrics_reporter_tick_interval:60000ms	- Cluster metrics reporter tick interval.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.metrics_reporter_url:https://m.rp.vectorized.io/v2	- URL of the cluster metrics reporter.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.min_cleanable_dirty_ratio:{0.2}	- The minimum ratio between the number of bytes in "dirty" segments and the total number of bytes in closed segments that must be reached before a partition's log is eligible for compaction in a compact topic. The topic property `min.cleanable.dirty.ratio` overrides the value of `min_cleanable_dirty_ratio` at the topic level.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.min_compaction_lag_ms:0ms	- For a compacted topic, the minimum time a message remains uncompacted in the log. The topic property `min.compaction.lag.ms` overrides this property.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.min_version:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.minimum_topic_replications:1	- Minimum allowable replication factor for topics in this cluster. The set value must be positive, odd, and equal to or less than the number of available brokers. Changing this parameter only restricts newly-created topics. Redpanda returns an `INVALID_REPLICATION_FACTOR` error on any attempt to create a topic with a replication factor less than this property. If you change the `minimum_topic_replications` setting, the replication factor of existing topics remains unchanged. However, Redpanda will log a warning on start-up with a list of any topics that have fewer replicas than this minimum. For example, you might see a message such as `Topic X has a replication factor less than specified minimum: 1 < 3`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.node_isolation_heartbeat_timeout:3000	- How long after the last heartbeat request a node will wait before considering itself to be isolated.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.node_management_operation_timeout_ms:5000ms	- Timeout for executing node management operations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.node_status_interval:100ms	- Time interval between two node status messages. Node status messages establish liveness status outside of the Raft protocol.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.node_status_reconnect_max_backoff_ms:15000ms	- Maximum backoff (in milliseconds) to reconnect to an unresponsive peer during node status liveness checks.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.oidc_clock_skew_tolerance:0s	- The amount of time (in seconds) to allow for when validating the expiry claim in the token.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.oidc_discovery_url:https://auth.prd.cloud.redpanda.com/.well-known/openid-configuration	- The URL pointing to the well-known discovery endpoint for the OIDC provider.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.oidc_keys_refresh_interval:3600s	- The frequency of refreshing the JSON Web Keys (JWKS) used to validate access tokens.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.oidc_principal_mapping:$.sub	- Rule for mapping JWT payload claim to a Redpanda user principal.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.oidc_token_audience:redpanda	- A string representing the intended recipient of the token.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_concurrent_moves:50	- Number of partitions that can be reassigned at once.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_max_disk_usage_percent:80	- When the disk usage of a node exceeds this threshold, it triggers Redpanda to move partitions off of the node. This property applies only when partition_autobalancing_mode is set to `continuous`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_min_size_threshold:{nullopt}	- Minimum size of partition that is going to be prioritized when rebalancing a cluster due to the disk size threshold being breached. This value is calculated automatically by default.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_mode:node_add	- Mode of partition balancing for a cluster. * `node_add`: partition balancing happens when a node is added. * `continuous`: partition balancing happens automatically to maintain optimal performance and availability, based on continuous monitoring for node changes (same as `node_add`) and also high disk usage. This option requires an Enterprise license, and it is customized by `partition_autobalancing_node_availability_timeout_sec` and `partition_autobalancing_max_disk_usage_percent` properties. * `off`: partition balancing is disabled. This option is not recommended for production clusters.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_movement_batch_size_bytes:5368709120	- Total size of partitions that autobalancer is going to move in one batch (deprecated, use partition_autobalancing_concurrent_moves to limit the autobalancer concurrency)
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_node_availability_timeout_sec:900s	- When a node is unavailable for at least this timeout duration, it triggers Redpanda to move partitions off of the node. This property applies only when `partition_autobalancing_mode` is set to `continuous`.      
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_tick_interval_ms:30000ms	- Partition autobalancer tick interval.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_tick_moves_drop_threshold:0.2	- If the number of scheduled tick moves drops by this ratio, a new tick is scheduled immediately. Valid values are (0, 1]. For example, with a value of 0.2 and 100 scheduled moves in a tick, a new tick is scheduled when the in-progress moves are fewer than 80.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_autobalancing_topic_aware:1	- If `true`, Redpanda prioritizes balancing a topic’s partition replica count evenly across all brokers while it’s balancing the cluster’s overall partition count. Because different topics in a cluster can have vastly different load profiles, this better distributes the workload of the most heavily-used topics evenly across brokers.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.partition_manager_shutdown_watchdog_timeout:30000ms	- A threshold value to detect partitions which might have been stuck while shutting down. After this threshold, a watchdog in partition manager will log information about partition shutdown not making progress.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.pp_sr_smp_max_non_local_requests:{nullopt}	- Maximum number of Cross-core(Inter-shard communication) requests pending in HTTP Proxy and Schema Registry seastar::smp group. (For more details, see the `seastar::smp_service_group` documentation).
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.quota_manager_gc_sec:30000ms	- Quota manager GC frequency in milliseconds.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_enable_longest_log_detection:1	- Enables an additional step in leader election where a candidate is allowed to wait for all the replies from the broker it requested votes from. This may introduce a small delay when recovering from failure, but it prevents truncation if any of the replicas have more data than the majority.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_enable_lw_heartbeat:1	- Enables Raft optimization of heartbeats.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_flush_timer_interval_ms:100ms	- Interval of checking partition against the `raft_replica_max_pending_flush_bytes`, deprecated started 24.1, use raft_replica_max_flush_delay_ms instead 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_heartbeat_disconnect_failures:3	- The number of failed heartbeats after which an unresponsive TCP connection is forcibly closed. To disable forced disconnection, set to 0.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_heartbeat_interval_ms:150ms	- Number of milliseconds for Raft leader heartbeats.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_heartbeat_timeout_ms:3000ms	- Raft heartbeat RPC (remote procedure call) timeout. Raft uses a heartbeat mechanism to maintain leadership authority and to trigger leader elections. The `raft_heartbeat_interval_ms` is a periodic heartbeat sent by the partition leader to all followers to declare its leadership. If a follower does not receive a heartbeat within the `raft_heartbeat_timeout_ms`, then it triggers an election to choose a new partition leader.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_io_timeout_ms:10000ms	- Raft I/O timeout.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_learner_recovery_rate:104857600	- Raft learner recovery rate limit. Throttles the rate of data communicated to nodes (learners) that need to catch up to leaders. This rate limit is placed on a node sending data to a recovering node. Each sending node is limited to this rate. The recovering node accepts data as fast as possible according to the combined limits of all healthy nodes in the cluster. For example, if two nodes are sending data to the recovering node, and `raft_learner_recovery_rate` is 100 MB/sec, then the recovering node will recover at a rate of 200 MB/sec.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_max_buffered_follower_append_entries_bytes_per_shard:0	- The total size of append entry requests that may be cached per shard, using Raft buffered protocol. When an entry is cached the leader can continue serving requests because the ordering of the cached requests cannot change. When the total size of cached requests reaches the set limit, back pressure is applied to throttle producers.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_max_concurrent_append_requests_per_follower:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_max_inflight_follower_append_entries_requests_per_shard:1024	- The maximum number of append entry requests that may be sent from raft groups on a Seastar shard to the current node and are awaiting a reply. This property replaces raft_max_concurrent_append_requests_per_follower.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_max_recovery_memory:{nullopt}	- Maximum memory that can be used for reads in Raft recovery process by default 15% of total memory.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_recovery_concurrency_per_shard:64	- Number of partitions that may simultaneously recover data to a particular shard. This number is limited to avoid overwhelming nodes when they come back online after an outage.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_recovery_default_read_size:524288	- Specifies the default size of a read issued during Raft follower recovery.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_recovery_throttle_disable_dynamic_mode:0	- Disables cross shard sharing used to throttle recovery traffic. Should only be used to debug unexpected problems.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_replica_max_flush_delay_ms:100ms	- Maximum delay between two subsequent flushes. After this delay, the log is automatically force flushed.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_replica_max_pending_flush_bytes:{262144}	- Maximum number of bytes that are not flushed per partition. If the configured threshold is reached, the log is automatically flushed even if it has not been explicitly requested.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_replicate_batch_window_size:1048576	- Maximum size of requests cached for replication.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_smp_max_non_local_requests:{nullopt}	- Maximum number of Cross-core(Inter-shard communication) requests pending in Raft seastar::smp group. For details, refer to the `seastar::smp_service_group` documentation).
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_timeout_now_timeout_ms:1000ms	- Timeout for Raft's timeout_now RPC. This RPC is used to force a follower to dispatch a round of votes immediately.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.raft_transfer_leader_recovery_timeout_ms:10000ms	- Follower recovery timeout waiting period when transferring leadership.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.readers_cache_eviction_timeout_ms:30000ms	- Duration after which inactive readers are evicted from cache.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.readers_cache_target_max_size:200	- Maximum desired number of readers cached per NTP. This a soft limit, meaning that a number of readers in cache may temporarily increase as cleanup is performed in the background.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.reclaim_batch_cache_min_free:67108864	- Minimum amount of free memory maintained by the batch cache background reclaimer.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.reclaim_growth_window:3000ms	- Starting from the last point in time when memory was reclaimed from the batch cache, this is the duration during which the amount of memory to reclaim grows at a significant rate, based on heuristics about the amount of available memory.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.reclaim_max_size:4194304	- Maximum batch cache reclaim size.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.reclaim_min_size:131072	- Minimum batch cache reclaim size.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.reclaim_stable_window:10000ms	- If the duration since the last time memory was reclaimed is longer than the amount of time specified in this property, the memory usage of the batch cache is considered stable, so only the minimum size (`reclaim_min_size`) is set to be reclaimed.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.recovery_append_timeout_ms:5000ms	- Timeout for append entry requests issued while updating a stale follower.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.release_cache_on_segment_roll:0	- Flag for specifying whether or not to release cache when a full segment is rolled.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.replicate_append_timeout_ms:3000ms	- Timeout for append entry requests issued while replicating entries.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_bytes:{nullopt}	- Default maximum number of bytes per partition on disk before triggering deletion of the oldest messages. If `null` (the default value), no limit is applied. The topic property `retention.bytes` overrides the value of `retention_bytes` at the topic level.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_strict:0	- Flag to allow Tiered Storage topics to expand to consumable retention policy limits. When this flag is enabled, non-local retention settings are used, and local retention settings are used to inform data removal policies in low-disk space scenarios.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_strict_override:1	- Trim log data when a cloud topic reaches its local retention limit. When this option is disabled Redpanda will allow partitions to grow past the local retention limit, and will be trimmed automatically as storage reaches the configured target size.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_target_bytes_default:{nullopt}	- Local retention size target for partitions of topics with object storage write enabled. If `null`, the property is disabled. This property can be overridden on a per-topic basis by setting `retention.local.target.bytes` in each topic enabled for Tiered Storage. Both `retention_local_target_bytes_default` and `retention_local_target_ms_default` can be set. The limit that is reached earlier is applied.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_target_capacity_bytes:{nullopt}	- The target capacity (in bytes) that log storage will try to use before additional retention rules take over to trim data to meet the target. When no target is specified, storage usage is unbounded. Redpanda Data recommends setting only one of `retention_local_target_capacity_bytes` or `retention_local_target_capacity_percent`. If both are set, the minimum of the two is used as the effective target capacity.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_target_capacity_percent:{80}	- The target capacity in percent of unreserved space (`disk_reservation_percent`) that log storage will try to use before additional retention rules will take over to trim data in order to meet the target. When no target is specified storage usage is unbounded. Redpanda Data recommends setting only one of `retention_local_target_capacity_bytes` or `retention_local_target_capacity_percent`. If both are set, the minimum of the two is used as the effective target capacity.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_target_ms_default:86400000ms	- Local retention time target for partitions of topics with object storage write enabled. This property can be overridden on a per-topic basis by setting `retention.local.target.ms` in each topic enabled for Tiered Storage. Both `retention_local_target_bytes_default` and `retention_local_target_ms_default` can be set. The limit that is reached first is applied.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_trim_interval:30000ms	- The period during which disk usage is checked for disk pressure, and data is optionally trimmed to meet the target.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.retention_local_trim_overage_coeff:2	- The space management control loop reclaims the overage multiplied by this this coefficient to compensate for data that is written during the idle period between control loop invocations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rm_sync_timeout_ms:10000ms	- Resource manager's synchronization timeout. Specifies the maximum time for this node to wait for the internal state machine to catch up with all events written by previous leaders before rejecting a request.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rm_violation_recovery_policy:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rpc_client_connections_per_peer:128	- The maximum number of connections a broker will open to each of its peers.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rpc_server_compress_replies:0	- Enable compression for internal RPC (remote procedure call) server replies.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rpc_server_listen_backlog:{nullopt}	- Maximum TCP connection queue length for Kafka server and internal RPC server. If `null` (the default value), no queue length is set.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rpc_server_tcp_recv_buf:{nullopt}	- Internal RPC TCP receive buffer size. If `null` (the default value), no buffer size is set by Redpanda.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rpc_server_tcp_send_buf:{nullopt}	- Internal RPC TCP send buffer size. If `null` (the default value), then no buffer size is set by Redpanda.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rpk_path:"/usr/bin/rpk"	- Path to RPK binary
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rps_limit_acls_and_users_operations:1000	- Rate limit for controller ACLs and user's operations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rps_limit_configuration_operations:1000	- Rate limit for controller configuration operations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rps_limit_move_operations:1000	- Rate limit for controller move operations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rps_limit_node_management_operations:1000	- Rate limit for controller node management operations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.rps_limit_topic_operations:1000	- Rate limit for controller topic operations.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.sasl_kerberos_config:/etc/krb5.conf	- The location of the Kerberos `krb5.conf` file for Redpanda.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.sasl_kerberos_keytab:/var/lib/redpanda/redpanda.keytab	- The location of the Kerberos keytab file for Redpanda.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.sasl_kerberos_principal:redpanda	- The primary of the Kerberos Service Principal Name (SPN) for Redpanda.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.sasl_kerberos_principal_mapping:{DEFAULT}	- Rules for mapping Kerberos principal names to Redpanda user principals.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.sasl_mechanisms:{SCRAM}	- A list of supported SASL mechanisms. Accepted values: `SCRAM`, `GSSAPI`, `OAUTHBEARER`, `PLAIN`.  Note that in order to enable PLAIN, you must also enable SCRAM.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.schema_registry_always_normalize:0	- Always normalize schemas. If set, this overrides the normalize parameter in API requests.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.schema_registry_enable_authorization:0	- Enable ACL-based authorization for Schema Registry requests. When true, uses ACL-based authorization instead of the default public/user/superuser authorization model. When false, uses the default authorization model. Requires authentication to be enabled via schema_registry_api.authn_method.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.schema_registry_protobuf_renderer_v2:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.seed_server_meta_topic_partitions:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.segment_appender_flush_timeout_ms:1000ms	- Maximum delay until buffered data is written.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.segment_fallocation_step:33554432	- Size for segments fallocation.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.seq_table_min_size:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.space_management_enable:1	- Option to explicitly disable automatic disk space management. If this property was explicitly disabled while using v23.2, it will remain disabled following an upgrade.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.space_management_enable_override:0	- Enable automatic space management. This option is ignored and deprecated in versions >= v23.3.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.space_management_max_log_concurrency:20	- Maximum parallel logs inspected during space management process.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.space_management_max_segment_concurrency:10	- Maximum parallel segments inspected during space management process.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_compaction_index_memory:134217728	- Maximum number of bytes that may be used on each shard by compaction index writers.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_compaction_key_map_memory:134217728	- Maximum number of bytes that may be used on each shard by compaction key-offset maps. Only applies when `log_compaction_use_sliding_window` is set to `true`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_compaction_key_map_memory_limit_percent:12	- Limit on `storage_compaction_key_map_memory`, expressed as a percentage of memory per shard, that bounds the amount of memory used by compaction key-offset maps. Memory per shard is computed after `data_transforms_per_core_memory_reservation`, and only applies when `log_compaction_use_sliding_window` is set to `true`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_ignore_cstore_hints:0	- When set, cstore hints are ignored and not used for data access (but are otherwise generated).
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_ignore_timestamps_in_future_sec:{nullopt}	- The maximum number of seconds that a record's timestamp can be ahead of a Redpanda broker's clock and still be used when deciding whether to clean up the record for data retention. This property makes possible the timely cleanup of records from clients with clocks that are drastically unsynchronized relative to Redpanda. When determining whether to clean up a record with timestamp more than `storage_ignore_timestamps_in_future_sec` seconds ahead of the broker, Redpanda ignores the record's timestamp and instead uses a valid timestamp of another record in the same segment, or (if another record's valid timestamp is unavailable) the timestamp of when the segment file was last modified (mtime). By default, `storage_ignore_timestamps_in_future_sec` is disabled (null). To figure out whether to set `storage_ignore_timestamps_in_future_sec` for your system: . Look for logs with segments that are unexpectedly large and not being cleaned up. . In the logs, search for records with unsynchronized timestamps that are further into the future than tolerable by your data retention and storage settings. For example, timestamps 60 seconds or more into the future can be considered to be too unsynchronized. . If you find unsynchronized timestamps throughout your logs, determine the number of seconds that the timestamps are ahead of their actual time, and set `storage_ignore_timestamps_in_future_sec` to that value so data retention can proceed. . If you only find unsynchronized timestamps that are the result of transient behavior, you can disable `storage_ignore_timestamps_in_future_sec`.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_max_concurrent_replay:1024	- Maximum number of partitions' logs that will be replayed concurrently at startup, or flushed concurrently on shutdown.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_min_free_bytes:10485760	- Threshold of minimum bytes free space before rejecting producers.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_read_buffer_size:131072	- Size of each read buffer (one per in-flight read, per log segment).
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_read_readahead_count:1	- How many additional reads to issue ahead of current read location.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_reserve_min_segments:2	- The number of segments per partition that the system will attempt to reserve disk capacity for. For example, if the maximum segment size is configured to be 100 MB, and the value of this option is 2, then in a system with 10 partitions Redpanda will attempt to reserve at least 2 GB of disk space.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_space_alert_free_threshold_bytes:0	- Threshold of minimum bytes free space before setting storage space alert.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_space_alert_free_threshold_percent:5	- Threshold of minimum percent free space before setting storage space alert.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_strict_data_init:0	- Requires that an empty file named `.redpanda_data_dir` be present in the broker configuration `data_directory`. If set to `true`, Redpanda will refuse to start if the file is not found in the data directory.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.storage_target_replay_bytes:10737418240	- Target bytes to replay from disk on startup after clean shutdown: controls frequency of snapshots and checkpoints.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.superusers:{}	- List of superuser usernames.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.target_fetch_quota_byte_rate:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.target_quota_byte_rate:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.tls_certificate_name_format:legacy	- The format of the certificates's distinguished name to use for mTLS principal mapping.  Legacy format would appear as 'C=US,ST=California,L=San Francisco,O=Redpanda,CN=redpanda', while rfc2253 format would appear as 'CN=redpanda,O=Redpanda,L=San Francisco,ST=California,C=US'.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.tls_enable_renegotiation:0	- TLS client-initiated renegotiation is considered unsafe and is by default disabled.  Only re-enable it if you are experiencing issues with your TLS-enabled client.  This option has no effect on TLSv1.3 connections as client-initiated renegotiation was removed.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.tls_min_version:v1.2	- The minimum TLS version that Redpanda clusters support. This property prevents client applications from negotiating a downgrade to the TLS version when they make a connection to a Redpanda cluster.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.tm_sync_timeout_ms:10000ms	- Transaction manager's synchronization timeout. Maximum time to wait for internal state machine to catch up before rejecting a request.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.tm_violation_recovery_policy:	- 
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.tombstone_retention_ms:{nullopt}	- The retention time for tombstone records and transaction markers in a compacted topic.
INFO  2025-09-25 07:04:13,752 [shard 0:main] main - application.cc:873 - redpanda.topic_fds_per_partition:{5}	- File descriptors required per partition replica: topic creation is prevented if it would result in the ratio of file descriptor limit to partition replicas being lower than this value.
INFO  2025-09-25 07:04:13,753 [shard 0:main] main - application.cc:873 - redpanda.topic_label_aggregation_limit:{nullopt}	- When the number of topics exceeds this limit, the topic label in generated metrics will be aggregated. If `nullopt`, then there is no limit.
INFO  2025-09-25 07:04:13,753 [shard 0:main] main - application.cc:873 - redpanda.topic_memory_per_partition:{204800}	- Required memory in bytes per partition replica when creating or altering topics. The total size of the memory pool for partitions is the total memory available to Redpanda times topic_partitions_memory_allocation_percent, and then each partition created requires topic_memory_per_partition bytes from that pool. If insufficent memory is available, topic creation or alternation will fail.
INFO  2025-09-25 07:04:13,753 [shard 0:main] main - application.cc:873 - redpanda.topic_partitions_memory_allocation_percent:10	- Percentage of total memory to reserve for topic partitions. See topic_memory_per_partition for details.
INFO  2025-09-25 07:04:13,753 [shard 0:main] main - application.cc:873 - redpanda.topic_partitions_per_shard:1000	- Maximum partition replicas per shard: topic creation is prevented if it would result in the ratio of partition replicas to shards being higher than this value.
INFO  2025-09-25 07:04:13,753 [shard 0:main] main - application.cc:873 - redpanda.topic_partitions_reserve_shard0:0	- Reserved partition slots on shard (CPU core) 0 on each node.  If this is >= topic_partitions_per_shard, no data partitions will be scheduled on shard 0
INFO  2025-09-25 07:04:13,753 [shard 0:main] main - application.cc:873 - redpanda.transaction_coordinator_cleanup_policy:delete	- Cleanup policy for a transaction coordinator topic. Accepted Values: `compact`, `delete`, `["compact","delete"]`, `none`
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.transaction_coordinator_delete_retention_ms:604800000ms	- Delete segments older than this age. To ensure transaction state is retained as long as the longest-running transaction, make sure this is no less than `transactional_id_expiration_ms`.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.transaction_coordinator_log_segment_size:1073741824	- The size (in bytes) each log segment should be.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.transaction_coordinator_partitions:50	- Number of partitions for transactions coordinator.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.transaction_coordinator_replication:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.transaction_max_timeout_ms:900000ms	- The maximum allowed timeout for transactions. If a client-requested transaction timeout exceeds this configuration, the broker returns an error during transactional producer initialization. This guardrail prevents hanging transactions from blocking consumer progress.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.transactional_id_expiration_ms:604800000ms	- Expiration time of producer IDs. Measured starting from the time of the last write until now for a given ID.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.tx_log_stats_interval_s:10s	- How often to log per partition tx stats, works only with debug logging enabled.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.tx_registry_log_capacity:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.tx_registry_sync_timeout_ms:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.tx_timeout_delay_ms:1000ms	- Delay before scheduling the next check for timed out transactions.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.unsafe_enable_consumer_offsets_delete_retention:0	- Enables delete retention of consumer offsets topic. This is an internal-only configuration and should be enabled only after consulting with Redpanda support.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.usage_disk_persistance_interval_sec:300s	- The interval in which all usage stats are written to disk.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.usage_num_windows:24	- The number of windows to persist in memory and disk.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.usage_window_width_interval_sec:3600s	- The width of a usage window, tracking cloud and kafka ingress/egress traffic each interval.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.use_fetch_scheduler_group:1	- Use a separate scheduler group for fetch processing.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.use_kafka_handler_scheduler_group:1	- Use separate scheduler group to handle parsing Kafka protocol requests
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.use_produce_scheduler_group:1	- Use a separate scheduler group for kafka produce requests processing.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.use_scheduling_groups:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.virtual_cluster_min_producer_ids:18446744073709551615	- Minimum number of active producers per virtual cluster.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.wait_for_leader_timeout_ms:5000ms	- Timeout to wait for leadership in metadata cache.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.write_caching_default:true	- The default write caching mode to apply to user topics. Write caching acknowledges a message as soon as it is received and acknowledged on a majority of brokers, without waiting for it to be written to disk. With `acks=all`, this provides lower latency while still ensuring that a majority of brokers acknowledge the write. Fsyncs follow `raft_replica_max_pending_flush_bytes` and `raft_replica_max_flush_delay_ms`, whichever is reached first. The `write_caching_default` cluster property can be overridden with the `write.caching` topic property. Accepted values: * `true` * `false` * `disabled`: This takes precedence over topic overrides and disables write caching for the entire cluster.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.zstd_decompress_workspace_bytes:8388608	- Size of the zstd decompression workspace.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:924 - Node configuration properties:
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:925 - (use `rpk redpanda config set <cfg> <value>` to change)
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.admin:{{:{host: 0.0.0.0, port: 9644}}}	- Network address for the Admin API[] server.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.admin_api_doc_dir:/usr/share/redpanda/admin-api-doc	- Path to the API specifications for the Admin API.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.admin_api_tls:{}	- Specifies the TLS configuration for the HTTP Admin API.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.advertised_kafka_api:{{:{host: 127.0.0.1, port: 9092}}}	- Address of Kafka API published to the clients
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.advertised_rpc_api:{{host: 127.0.0.1, port: 33145}}	- Address of RPC endpoint published to other cluster members
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.cloud_storage_cache_directory:{nullopt}	- Directory for archival cache. Should be present when `cloud_storage_enabled` is present
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.cloud_storage_inventory_hash_path_directory:{nullopt}	- Directory to store inventory report hashes for use by cloud storage scrubber
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.coproc_supervisor_server:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.crash_loop_limit:{5}	- A limit on the number of consecutive times a broker can crash within one hour before its crash-tracking logic is reset. This limit prevents a broker from getting stuck in an infinite cycle of crashes. For more information see https://docs.redpanda.com/current/reference/properties/broker-properties/#crash_loop_limit.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.crash_loop_sleep_sec:{nullopt}	- The amount of time the broker sleeps before terminating the process when it reaches the number of consecutive times a broker can crash. For more information, see https://docs.redpanda.com/current/reference/properties/broker-properties/#crash_loop_limit.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.dashboard_dir:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.data_directory:{data_directory="/var/lib/redpanda/data"}	- Path to the directory for storing Redpanda's streaming data files.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.developer_mode:1	- Skips most of the checks performed at startup, not recomended for production use
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.emergency_disable_data_transforms:0	- Override the cluster property `data_transforms_enabled` and disable Wasm-powered data transforms. This is an emergency shutoff button.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.empty_seed_starts_cluster:1	- Controls how a new cluster is formed. All brokers in a cluster must have the same value. See how the `empty_seed_starts_cluster` setting works with the `seed_servers` setting to form a cluster. For backward compatibility, `true` is the default. Redpanda recommends using `false` in production environments to prevent accidental cluster formation.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.enable_central_config:	- 
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.fips_mode:disabled	- Controls whether Redpanda starts in FIPS mode.  This property allows for three values: `disabled` - Redpanda does not start in FIPS mode. `permissive` - Redpanda performs the same check as enabled, but a warning is logged, and Redpanda continues to run. Redpanda loads the OpenSSL FIPS provider into the OpenSSL library. After this completes, Redpanda is operating in FIPS mode, which means that the TLS cipher suites available to users are limited to the TLSv1.2 and TLSv1.3 NIST-approved cryptographic methods. `enabled` - Redpanda verifies that the operating system is enabled for FIPS by checking `/proc/sys/crypto/fips_enabled`. If the file does not exist or does not return `1`, Redpanda immediately exits.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.kafka_api:{{:{host: 0.0.0.0, port: 9092}:{nullopt}}}	- IP address and port of the Kafka API endpoint that handles requests.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.kafka_api_tls:{}	- Transport Layer Security (TLS) configuration for the Kafka API endpoint.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.memory_allocation_warning_threshold:{131073}	- Threshold for log messages that contain a larger memory allocation than specified.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.node_id:{0}	- A number that uniquely identifies the broker within the cluster. If `null` (the default value), Redpanda automatically assigns an ID. If set, it must be non-negative value. The `node_id` property must not be changed after a broker joins the cluster.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.node_id_overrides:{}	- List of node ID and UUID overrides to be applied at broker startup. Each entry includes the current UUID and desired ID and UUID. Each entry applies to a given node if and only if 'current' matches that node's current UUID.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.openssl_config_file:{nullopt}	- Path to the configuration file used by OpenSSL to properly load the FIPS-compliant module.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.openssl_module_directory:{nullopt}	- Path to the directory that contains the OpenSSL FIPS-compliant module. The filename that Redpanda looks for is `fips.so`.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.rack:{nullopt}	- A label that identifies a failure zone. Apply the same label to all brokers in the same failure zone. When `enable_rack_awareness` is set to `true` at the cluster level, the system uses the rack labels to spread partition replicas across different failure zones.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.recovery_mode_enabled:0	- If `true`, start Redpanda in recovery mode, where user partitions are not loaded and only administrative operations are allowed.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.rpc_server:{host: 0.0.0.0, port: 33145}	- IP address and port for the Remote Procedure Call (RPC) server.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.rpc_server_tls:{ enabled: 0 key/cert files: {nullopt} ca file: {nullopt} crl file: {nullopt} client_auth_required: 0 }	- TLS configuration for the RPC server.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.seed_servers:{}	- List of the seed servers used to join current cluster. If the `seed_servers` list is empty the node will be a cluster root and it will form a new cluster. When `empty_seed_starts_cluster` is `true`, Redpanda enables one broker with an empty `seed_servers` list to initiate a new cluster. The broker with an empty `seed_servers` becomes the cluster root, to which other brokers must connect to join the cluster.  Brokers looking to join the cluster should have their `seed_servers` populated with the cluster root's address, facilitating their connection to the cluster. Only one broker, the designated cluster root, should have an empty `seed_servers` list during the initial cluster bootstrapping. This ensures a single initiation point for cluster formation. When `empty_seed_starts_cluster` is `false`, Redpanda requires all brokers to start with a known set of brokers listed in `seed_servers`. The `seed_servers` list must not be empty and should be identical across these initial seed brokers, containing the addresses of all seed brokers. Brokers not included in the `seed_servers` list use it to discover and join the cluster, allowing for expansion beyond the foundational members. The `seed_servers` list must be consistent across all seed brokers to prevent cluster fragmentation and ensure stable cluster formation.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.storage_failure_injection_config_path:{nullopt}	- Path to the configuration file used for low level storage failure injection.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.storage_failure_injection_enabled:0	- If `true`, inject low level storage failures on the write path. Do _not_ use for production instances.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.upgrade_override_checks:0	- Whether to violate safety checks when starting a Redpanda version newer than the cluster's consensus version.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - redpanda.verbose_logging_timeout_sec_max:{nullopt}	- Maximum duration in seconds for verbose (`TRACE` or `DEBUG`) logging. Values configured above this will be clamped. If null (the default) there is no limit. Can be overridden in the Admin API on a per-request basis.
INFO  2025-09-25 07:04:13,754 [shard 0:main] main - application.cc:873 - pandaproxy.advertised_pandaproxy_api:{}	- Network address for the HTTP Proxy API server to publish to clients.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy.api_doc_dir:/usr/share/redpanda/proxy-api-doc	- Path to the API specifications for the HTTP Proxy API.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy.client_cache_max_size:10	- The maximum number of Kafka client connections that Redpanda can cache in the LRU (least recently used) cache. The LRU cache helps optimize resource utilization by keeping the most recently used clients in memory, facilitating quicker reconnections for frequent clients while limiting memory usage.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy.client_keep_alive:300000ms	- Time, in milliseconds, that an idle client connection may remain open to the HTTP Proxy API.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy.consumer_instance_timeout_ms:300000ms	- How long to wait for an idle consumer before removing it. A consumer is considered idle when it's not making requests or heartbeats.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy.pandaproxy_api:{{:{host: 0.0.0.0, port: 8082}:<nullopt>}}	- Rest API listen address and port
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy.pandaproxy_api_tls:{}	- TLS configuration for Pandaproxy api.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.broker_tls:{ enabled: 0 key/cert files: {nullopt} ca file: {nullopt} crl file: {nullopt} client_auth_required: 0 }	- TLS configuration for the Kafka API servers to which the HTTP Proxy client should connect.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.brokers:{{host: 0.0.0.0, port: 9092}}	- Network addresses of the Kafka API servers to which the HTTP Proxy client should connect.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.client_identifier:{pandaproxy_client}	- Custom identifier to include in the Kafka request header for the HTTP Proxy client. This identifier can help debug or monitor client activities.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.consumer_heartbeat_interval_ms:500ms	- Interval (in milliseconds) for consumer heartbeats.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.consumer_rebalance_timeout_ms:2000ms	- Timeout (in milliseconds) for consumer rebalance.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.consumer_request_max_bytes:1048576	- Maximum bytes to fetch per request.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.consumer_request_min_bytes:1	- Minimum bytes to fetch per request.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.consumer_request_timeout_ms:100ms	- Interval (in milliseconds) for consumer request timeout.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.consumer_session_timeout_ms:300000ms	- Timeout (in milliseconds) for consumer session.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.produce_ack_level:-1	- Number of acknowledgments the producer requires the leader to have received before considering a request complete.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.produce_batch_delay_ms:100ms	- Delay (in milliseconds) to wait before sending batch.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.produce_batch_record_count:1000	- Number of records to batch before sending to broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.produce_batch_size_bytes:1048576	- Number of bytes to batch before sending to broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.produce_compression_type:none	- Enable or disable compression by the Kafka client. Specify `none` to disable compression or one of the supported types [gzip, snappy, lz4, zstd].
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.produce_shutdown_delay_ms:0ms	- Delay (in milliseconds) to allow for final flush of buffers before shutting down.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.retries:5	- Number of times to retry a request to a broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.retry_base_backoff_ms:100ms	- Delay (in milliseconds) for initial retry backoff.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.sasl_mechanism:	- The SASL mechanism to use when connecting.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.scram_password:	- Password to use for SCRAM authentication mechanisms.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - pandaproxy_client.scram_username:	- Username to use for SCRAM authentication mechanisms.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry.api_doc_dir:/usr/share/redpanda/proxy-api-doc	- API doc directory
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry.mode_mutability:1	- Enable modifications to the read-only `mode` of the Schema Registry.When set to `true`, the entire Schema Registry or its subjects can be switched to `READONLY` or `READWRITE`. This property is useful for preventing unwanted changes to the entire Schema Registry or specific subjects.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry.schema_registry_api:{{:{host: 0.0.0.0, port: 8081}:<nullopt>}}	- Schema Registry API listener address and port
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry.schema_registry_api_tls:{}	- TLS configuration for Schema Registry API.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry.schema_registry_replication_factor:{nullopt}	- Replication factor for internal `_schemas` topic.  If unset, defaults to `default_topic_replication`.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.broker_tls:{ enabled: 0 key/cert files: {nullopt} ca file: {nullopt} crl file: {nullopt} client_auth_required: 0 }	- TLS configuration for the Kafka API servers to which the HTTP Proxy client should connect.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.brokers:{{host: 0.0.0.0, port: 9092}}	- Network addresses of the Kafka API servers to which the HTTP Proxy client should connect.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.client_identifier:{schema_registry_client}	- Custom identifier to include in the Kafka request header for the HTTP Proxy client. This identifier can help debug or monitor client activities.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.consumer_heartbeat_interval_ms:500ms	- Interval (in milliseconds) for consumer heartbeats.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.consumer_rebalance_timeout_ms:2000ms	- Timeout (in milliseconds) for consumer rebalance.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.consumer_request_max_bytes:1048576	- Maximum bytes to fetch per request.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.consumer_request_min_bytes:1	- Minimum bytes to fetch per request.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.consumer_request_timeout_ms:100ms	- Interval (in milliseconds) for consumer request timeout.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.consumer_session_timeout_ms:10000ms	- Timeout (in milliseconds) for consumer session.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.produce_ack_level:-1	- Number of acknowledgments the producer requires the leader to have received before considering a request complete.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.produce_batch_delay_ms:0ms	- Delay (in milliseconds) to wait before sending batch.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.produce_batch_record_count:0	- Number of records to batch before sending to broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.produce_batch_size_bytes:0	- Number of bytes to batch before sending to broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.produce_compression_type:none	- Enable or disable compression by the Kafka client. Specify `none` to disable compression or one of the supported types [gzip, snappy, lz4, zstd].
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.produce_shutdown_delay_ms:0ms	- Delay (in milliseconds) to allow for final flush of buffers before shutting down.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.retries:5	- Number of times to retry a request to a broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.retry_base_backoff_ms:100ms	- Delay (in milliseconds) for initial retry backoff.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.sasl_mechanism:	- The SASL mechanism to use when connecting.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.scram_password:	- Password to use for SCRAM authentication mechanisms.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - schema_registry_client.scram_username:	- Username to use for SCRAM authentication mechanisms.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.broker_tls:{ enabled: 0 key/cert files: {nullopt} ca file: {nullopt} crl file: {nullopt} client_auth_required: 0 }	- TLS configuration for the Kafka API servers to which the HTTP Proxy client should connect.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.brokers:{{host: 0.0.0.0, port: 9092}}	- Network addresses of the Kafka API servers to which the HTTP Proxy client should connect.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.client_identifier:{audit_log_client}	- Custom identifier to include in the Kafka request header for the HTTP Proxy client. This identifier can help debug or monitor client activities.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.consumer_heartbeat_interval_ms:500ms	- Interval (in milliseconds) for consumer heartbeats.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.consumer_rebalance_timeout_ms:2000ms	- Timeout (in milliseconds) for consumer rebalance.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.consumer_request_max_bytes:1048576	- Maximum bytes to fetch per request.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.consumer_request_min_bytes:1	- Minimum bytes to fetch per request.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.consumer_request_timeout_ms:100ms	- Interval (in milliseconds) for consumer request timeout.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.consumer_session_timeout_ms:10000ms	- Timeout (in milliseconds) for consumer session.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.produce_ack_level:1	- Number of acknowledgments the producer requires the leader to have received before considering a request complete.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.produce_batch_delay_ms:0ms	- Delay (in milliseconds) to wait before sending batch.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.produce_batch_record_count:0	- Number of records to batch before sending to broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.produce_batch_size_bytes:0	- Number of bytes to batch before sending to broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.produce_compression_type:zstd	- Enable or disable compression by the Kafka client. Specify `none` to disable compression or one of the supported types [gzip, snappy, lz4, zstd].
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.produce_shutdown_delay_ms:3000ms	- Delay (in milliseconds) to allow for final flush of buffers before shutting down.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.retries:5	- Number of times to retry a request to a broker.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.retry_base_backoff_ms:100ms	- Delay (in milliseconds) for initial retry backoff.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.sasl_mechanism:	- The SASL mechanism to use when connecting.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.scram_password:	- Password to use for SCRAM authentication mechanisms.
INFO  2025-09-25 07:04:13,755 [shard 0:main] main - application.cc:873 - audit_log_client.scram_username:	- Username to use for SCRAM authentication mechanisms.
INFO  2025-09-25 07:04:13,757 [shard 0:main] crash_tracker - recorder.cc:71 - Creating crash report directory /var/lib/redpanda/data/crash_reports
INFO  2025-09-25 07:04:13,757 [shard 0:main] main - application.cc:521 - Shutdown complete.
ERROR 2025-09-25 07:04:13,757 [shard 0:main] main - application.cc:547 - Failure during startup: std::__1::__fs::filesystem::filesystem_error (error system:13, filesystem error: mkdir failed: Permission denied ["/var/lib/redpanda/data/crash_reports"])
Skipping recording crash reason to crash file.


## Ports/Volumes per container (short inspect)
### grafana
Ports:
  3000/tcp ← 0.0.0.0:3000, :::3000, 0.0.0.0:3000, :::3000
Mounts:
  bind: /home/devops/taais/grafana/provisioning -> /etc/grafana/provisioning
  bind: /home/devops/taais/grafana/data -> /var/lib/grafana

### clickhouse
Ports:
  8123/tcp ← 0.0.0.0:8213, :::8213, 0.0.0.0:8213, :::8213
  9000/tcp ← 0.0.0.0:9005, :::9005, 0.0.0.0:9005, :::9005
  9009/tcp ← 
Mounts:
  bind: /home/devops/taais/clickhouse-data -> /var/lib/clickhouse

### minio
Ports:
  9000/tcp ← 0.0.0.0:9100, :::9100, 0.0.0.0:9100, :::9100
  9001/tcp ← 0.0.0.0:9101, :::9101, 0.0.0.0:9101, :::9101
Mounts:
  bind: /home/devops/taais/minio-data -> /data

### compose-airflow-1
Ports:
  8080/tcp ← 0.0.0.0:8123, :::8123, 0.0.0.0:8123, :::8123
Mounts:
  bind: /home/devops/taais/volumes/airflow -> /opt/airflow

### compose-mlflow-1
Ports:
  5000/tcp ← 0.0.0.0:5000, :::5000, 0.0.0.0:5000, :::5000
Mounts:
  bind: /home/devops/taais/volumes/mlflow -> /mlruns

### compose-prometheus-1
Ports:
Mounts:
  bind: /home/devops/taais/volumes/prometheus -> /prometheus

### compose-redpanda-1
Ports:
Mounts:
  bind: /home/devops/taais/volumes/redpanda -> /var/lib/redpanda/data

### compose-clickhouse-1
Ports:
  8123/tcp ← 
  9000/tcp ← 0.0.0.0:9009, :::9009, 0.0.0.0:9009, :::9009
  9009/tcp ← 
Mounts:
  bind: /home/devops/taais/volumes/clickhouse -> /var/lib/clickhouse

### compose-minio-1
Ports:
  9000/tcp ← 0.0.0.0:9000, :::9000, 0.0.0.0:9000, :::9000
  9001/tcp ← 0.0.0.0:9001, :::9001, 0.0.0.0:9001, :::9001
Mounts:
  bind: /home/devops/taais/volumes/minio -> /data

### compose-traefik-1
Ports:
  80/tcp ← 0.0.0.0:80, :::80, 0.0.0.0:80, :::80
  8080/tcp ← 0.0.0.0:8080, :::8080, 0.0.0.0:8080, :::8080
Mounts:
  bind: /var/run/docker.sock -> /var/run/docker.sock

### compose-postgres-1
Ports:
  5432/tcp ← 
Mounts:
  bind: /home/devops/taais/volumes/pg -> /var/lib/postgresql/data

### compose-redis-1
Ports:
  6379/tcp ← 
Mounts:
  bind: /home/devops/taais/volumes/redis -> /data

### compose-vault-1
Ports:
  8200/tcp ← 0.0.0.0:8200, :::8200, 0.0.0.0:8200, :::8200
Mounts:
  volume: /var/lib/docker/volumes/b46edf8efd3a9f7ad04a9916e220e9c1ba4feb00504266994bdf570bcbe71048/_data -> /vault/file
  volume: /var/lib/docker/volumes/5194f9ee0af29bb7c6a43f7c27e28f74908bcce268bd49f23f759aa7c7cd01fb/_data -> /vault/logs

