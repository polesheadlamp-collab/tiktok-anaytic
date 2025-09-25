<!-- generated: 2025-09-25 23:02:03 UTC -->

# 02-FSD.md

TAAIS Design System Ultra (v1)
 Tujuan
 Menyediakan pedoman UI/UX kelas enterprise untuk sistem analitik TikTok (TAAIS): konsisten, rapih, mudah di-
 scaling, dan fokus pada informasi keputusan aksi.



 © TAAIS



 Prinsip                                                                                               Perangkat
 12 column grid; ritme 8pt; white space proporsional;                                                  Web 1440w + besar (monitor analyst). Dashboard
 tipografi hierarkis; komponen reusable; status yang                                                   responsif 1280w. Desain gelap atau netral. Grafik
 jelas (Strong/Average/Weak).                                                                          realtime terbatas (retention/velocity); lainnya
                                                                                                       periodik.




 Isi Dokumen
 - Grid & Spacing - Tipografi & Warna (tokens) - Komponen (KPI, Kartu, Tabel, Filter) - Data Viz (Retention,
 Heatmap, Lift) - Pola Interaksi & Status - Template Layar per Role - Aksesibilitas & Motion
Grid & Spacing
  Kolom 1-3                                     Kolom 4-6                                     Kolom 7-9                    Kolom 10-12
  Gunakan 12 column grid                        Gunakan 12 column grid                        Gunakan 12 column grid       Gunakan 12 column grid
  dengan gutter konsisten.                      dengan gutter konsisten.                      dengan gutter konsisten.     dengan gutter konsisten.
  Margin kiri/kanan 4%. Unit                    Margin kiri/kanan 4%. Unit                    Margin kiri/kanan 4%. Unit   Margin kiri/kanan 4%. Unit
  spacing 8pt                                   spacing 8pt                                   spacing 8pt                  spacing 8pt
  (padding/margin/stack).                       (padding/margin/stack).                       (padding/margin/stack).      (padding/margin/stack).




 Ritme & Hierarki
 Gunakan ritme vertikal 8pt; konsisten jarak antar kartu & heading. H1 24 28, H2 18 22, H3 14 16, body 12 14.
 Maksimalkan white space untuk keterbacaan. Hindari garis berlebihan prioritaskan alignment.
Design Tokens
 Tipografi                                                                                     Warna (semantik)
 H1: 28 / H2: 22 / H3: 16 / Body: 12 14 / Caption: 11                                          Strong: hijau Average: kuning Weak: merah Surface:
 Weight: 700/600/400 Line height: 1.3 1.5                                                      panel gelap/netral; Divider tipis Text: kontras AA/AAA




 Elevasi & Radius                                                                              Ikonografi
 Kartu: radius 12 16; bayangan lembut untuk kedalaman;                                         Ikon garis 24px; hindari ikon yang ambigu; labelkan
 outline 1 1.5px.                                                                              aksi penting.




 Status & Badge
 Gunakan badge untuk status FYP Score: Strong ( 70), Average (50 69), Weak (<50). Warnai grafik berdasarkan tema
 tetapi jangan berlebihan; fokus ke data.
Komponen KPI Tiles & Cards
   FYP Rate ( 70)                                   Composite FYP                                   Completion                                  ER
                               64%                                                  73                                       58%                            7.1%

                               Week +6%                                             Strong                                     Average                       Strong




   Top Drivers                                                                                      Risks
   Hook visual awal, caption tanya, durasi < 20s, sound                                             Drop 0 3s > 60%; sound usang; caption panjang; upload
   family A; timing 19 22; hashtag niche sempit.                                                    di jam low confidence.




 Guidelines
 KPI tiles selaras di grid; angka besar; label singkat. Gunakan kartu untuk ringkasan insight/risiko.
Komponen Tabel, Filter, Badges
  Video | Skor | Status | Durasi | Sound | Upload




 Filter Bar & Controls
 Brand, Akun, Rentang Waktu, Niche, Durasi, Status (Strong/Average/Weak); Pencarian; Export CSV; Kolom dinamis.
Data Visualization Specs
 Retention Curve                                                                                 Heatmap 7×24
 Line chart; marker drop 0 3s & 3 5s; tooltip: sisa %.                                           Bucket jam; warna = median FYP; tooltip: median V15 &
 Band persentil historis (shaded).                                                               confidence (n). Toggle 7/30/90 hari.




 Distribution Source                                                                             Lift Chart
 Stacked bar: FYP vs Following vs Profile.                                                       Bar + CI; tampilkan lift × dan coverage. Urutkan
                                                                                                 menurut dampak.




 Aksesibilitas & Motion
 Kontras AA/AAA; fokus jelas; semua aksi via keyboard; motion 120 240ms, easing standard, haptic ringan.
Template Layar Ringkasan (per Role)
 Executive                  Analyst                   Video Detail            Planner
 Template untuk Executive   Template untuk Analyst    Template untuk Video    Template untuk Planner
                                                      Detail




 Preflight                  Playbook                  Action                  Admin
 Template untuk Preflight   Template untuk Playbook   Template untuk Action   Template untuk Admin
