# 02 — Data Contract
Schema CSV: date(YYYY-MM-DD), hour(0-23), content_id, views, clicks, chats, cost
Validasi: views>=clicks, cost>=0, hour 0..23, tanggal ≤ hari ini.
Turunan: CTR = clicks/views, CPR = cost/chats (∞ bila chats=0).
