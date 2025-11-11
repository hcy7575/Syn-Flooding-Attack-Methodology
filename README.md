# SYN Flooding — Authorized Academic Analysis
## SYN Flooding — Yetkili Akademik Analiz

---

## TL;DR (TR/ENG)
**TR:** Bu repo, yetkilendirilmiş bir akademik çalışma kapsamında gerçekleştirilen SYN Flooding deneyinin anonimleştirilmiş raporunu, ölçüm grafiklerini ve güvenli bir şekilde yerelde tekrar üretilebilecek bir laboratuvar kurulumunu içerir.  

**ENG:** This repository contains a sanitized report of an authorized academic SYN Flooding experiment, measurement graphs, and a reproducible local lab setup for safe educational use.

---

## İzin / Permission (TR/ENG)
**TR:** Bu çalışma, rapor sahibi tarafından belirtilen şekilde **yazılı akademik izin** ile gerçekleştirilmiştir. Repo, çalıştırılabilir saldırı betikleri, ham paket yakalama dosyaları (pcap/pcapng) veya açığa çıkarılmış hedef IP/hostname içeren ham loglar içermez. `docs/permission_statement.pdf` dosyası (varsa) izin belgesinin sanitaze edilmiş bir kopyasını içerir.  

**ENG:** This work was performed under written academic authorization. The repository intentionally excludes runnable attack scripts, raw packet captures (pcap/pcapng), and un-redacted logs containing target IPs/hostnames. If available, a sanitized copy of the permission statement is in `docs/permission_statement.pdf`.

---

## Neler Bulunur / What's Included (TR/ENG)
**TR:**
- `docs/report_sanitized.txt` veya `docs/report_sanitized.pdf` — anonimleştirilmiş rapor (metin veya PDF).  
- `docs/report_sanitization_log.txt` — otomatik redaksiyon ile nelerin değiştirildiğine dair kayıt.  
- `docs/graphs/` — ölçüm grafikleri (PNG/SVG) — hassas bilgiler anonimleştirilmiş.  
- `lab/` — yalnızca **local** kullanım amaçlı, Docker Compose tabanlı örnek laboratuvar (ör. nginx + yük üreteci).  
- `examples/commands.md` — araç kullanım örnekleri (sadece belgeleme amaçlı; çalıştırmayın).  
- `anonymize_report.py` — raporu metin olarak çıkarmaya/regex ile redakte etmeye yarayan yardımcı script.

**ENG:**
- `docs/report_sanitized.txt` or `docs/report_sanitized.pdf` — sanitized report (text or PDF).  
- `docs/report_sanitization_log.txt` — log of automated redactions.  
- `docs/graphs/` — measurement graphs (PNG/SVG) with sensitive data anonymized.  
- `lab/` — Docker Compose based example lab for **local-only** use (e.g., nginx + a load generator).  
- `examples/commands.md` — example commands for tools (documentation only; do not run).  
- `anonymize_report.py` — helper script to extract and redact text from the original report.

---

## Yasal & Etik Uyarı / Legal & Ethical Notice (TR/ENG)
**TR:** Bu materyaller **sadece** eğitim ve araştırma amaçlıdır. İçeriği izinsiz olarak gerçek sistemlere karşı kullanmak **yasadışıdır** ve ciddi hukuki sonuçlar doğurabilir. Herhangi bir sisteme test uygulamadan önce **yazılı izin** alın. Repo içindeki örnek komutlar belgeleme amaçlıdır; bunları dış hedeflere karşı çalıştırmayın.  

**ENG:** These materials are for education and research only. Using the content against real systems without explicit permission is illegal and may have serious legal consequences. Always obtain written authorization before testing any system. Command examples in this repository are for documentation only — do not execute them against external targets.

---

## Güvenli Tekrar Üretim / Safe Reproduction (TR/ENG)
**TR:**
1. Repo'yu klonlayın veya indirin.  
2. `cd lab` → `docker compose up -d` (Docker Desktop veya Docker Engine ile). Bu lab **sadece localhost** içinde çalışır; dış IP'lere yönlendirmeyin.  
3. `run-local.sh` içindeki örnekleri kullanarak yerelde kısa, kontrollü yük testleri çalıştırın.  
4. Raporu yeniden üretmek veya kontrol etmek için `anonymize_report.py` ile orijinal PDF'den (veya metin dosyasından) anonimleştirilmiş metin çıktı alın.

**ENG:**
1. Clone or download the repository.  
2. `cd lab` → `docker compose up -d` (using Docker Desktop or Docker Engine). The lab is **local-only**; do not point it at external IPs.  
3. Use the examples in `run-local.sh` to run short, controlled local load tests.  
4. Recreate the sanitized report using `anonymize_report.py` on the original PDF/text if needed.

---
---

## Kesinlikle Eklemeyin / Must NOT Include (TR/ENG)
**TR:**  
- Ham pcap/pcapng/tcpdump dosyaları.  
- Çalıştırılabilir saldırı scriptleri veya otomatik flood betikleri.  
- Ham loglar veya hedef IP/hostname içeren ham veri dosyaları (anonimize edilmemiş).  

**ENG:**  
- Raw pcap/pcapng/tcpdump files.  
- Runnable attack scripts or automated flood scripts.  
- Raw logs or data files containing un-redacted target IPs/hostnames.

---

## Lisans / License (TR/ENG)
**TR:** Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) önerilir. Akademik ve eğitim amaçlı kullanım için uygundur.  

**ENG:** Recommended license: Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0). Suitable for academic and educational use.

---

## Kaynakça / References (TR/ENG)
**TR:** Orijinal rapordaki referanslar raporda korunmuştur; raporu incelerken ilgili literatüre başvurunuz.  

**ENG:** References listed in the original report are preserved; consult them for deeper technical background.

---

## İletişim / Contact (TR/ENG)
**TR:** Herhangi bir soru için GitHub Issues kullanabilirsiniz veya repo sahibi ile iletişime geçin.  

**ENG:** For questions, open a GitHub Issue or contact the repository owner.
