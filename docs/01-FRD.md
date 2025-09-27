<!-- generated: 2025-09-27 08:35:02 UTC -->

# 01-FRD.md

                                                                                                                           TAAIS — Ultra Addendum (A1 Landscape) v2

                                                                                                         I) Roadmap (4 minggu)

    W1: login multi‑akun, XHR collector, mapper,
                                                                 W2: heatmap & schedule, preflight, action DSL v1               W3: pattern+recipe, bandit, notif Slack/Trello         W4: RL ringan, drift detector, weekly report
            DB, KPI dasar, dashboard 1p



                                                                         H) Governance & Ops

             RBAC multi‑tenant + OPA                                           Audit trails immutable                                    PII masking & KMS secrets




           SLA/SLO, Prom/Grafana alerts                                       Cost & quota per tenant




                                                                        G) MLOps & Adaptation

       Reinforcement Learning (reward=FYP)
                update mingguan
                                                                           Auto‑Retrain saat drift >15%
                                                                                                                                    Drift/OOD detector (data & concept)
                                                                                canary & rollback

         Model Registry/Versioning (MLflow)




                                                                                                            F) Pattern & Experiment

         Cluster: durasi, hook, text density,                                  Association: X→lift(Y)
                                                                                                                                    What‑if: ubah faktor sebelum upload               Bandit: pilih varian hook/caption/sound/timing
           beat drop, niche, sound family                             ex: <18s + hook≤2s + tanya → ER×2.1



                                                              E) Data Contracts & Relations

                                                                                Hashtag(tag, family)




VideoCore(video_id, account, upload_ts, duration_ms,
                                                                        Music(music_id, family, trend_score)
       caption, hashtags[], music_id, niche)



                                                                VideoMetricsWindow(video_id, window, views, likes,
                                                             comments, shares, profile_clicks, follows, completion_rate,               KPIRecord(... fyp_score, status)
                                                                               retention_curve[])



                                                D) Action Plan DSL

   IF drop_0_3s>60 & v15<p50 → recut 12–15s,
    hook visual 1s, caption '?', sound trending A
               SLA:6h assign:Creator

                                                                     Trello/Jira/Slack; Prioritas = Impact×Effort

    IF fyp≥75 & er≥p70 → cross‑post brand lain,
                  jadwalkan 2 slot



                                                                                                                            C) Schedule Engine (7×24 + bandit)

     Heatmap median(FYP,V15) per (dow,hour)                              Pilih K slot/minggu; jarak≥6h/akun                              Exploration 20% (ε‑greedy)                  Template per slot: durasi, hook, hashtag, sound
                                                                                                                                                                                                                                        Alarm 15m: V15/CR < P40 → Action Plan
             EWMA + penalti low-n                                                 Stagger antar akun                                           Cegah stagnasi                                   berdasar pattern sukses



                                                                                                                           A) Extended Modules (beyond base)

             DAM (Digital Asset Mgmt)                                       Policy Engine (OPA/reBAC)                                  CompletionRate; RewatchRatio                           Risk & Ethics / LLM Guardrails                      Tenant Cost/Budget
   Footage/raw cut/versioning → link ke performa                           Akses granular per brand/role                          Drop_0_3s & Drop_3_5s → dibalik skornya                 Tone/claim checker; prompt red‑team           Rate limit per brand; biaya eksperimen



                                                                                                                                                                                             B) KPI Formulas (0–100)

                                                                                                                                  Normalisasi = 100 * CDF_brand(metric)
                                                                                                                                       EWMA λ=0.6, horizon 14d



                                                                                                                                  Velocity: V15/V60/V24 = views per menit
                                                                                                                                             window 0–15/60/24h
                                                                                                                                                                                  CompositeFYP = 0.18V15+0.12V60+0.05V24+0.15CR
                                                                                                                                                                                                                                       Status: Strong≥70 / Avg 50–69 / Weak<50
                                                                                                                                                                                    +0.10(50-D03)+0.05(50-D35)+0.10ER+0.06Share
                                                                                                                                                                                                                                       Op FYP: V15≥P80 OR (CR≥P70 & ER≥P70)
                                                                                                                                                                                 +0.06CTR+0.03Follow+0.05Trend+0.03Timing+0.02Cons
                                                                                                                                    ER=(likes+comments+shares)/views
                                                                                                                                     ShareRate; ProfileCTR; FollowConv



                                                                                                                                       TrendAlign: cosine similarity
                                                                                                                                       music/hashtag ↔ tren saat ini



                                                                                                                                      TimingScore: prime slot heatmap
                                                                                                                                       ConsistencyIdx: cadence rolling
