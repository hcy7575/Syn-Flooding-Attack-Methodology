# SYN Flooding — Authorized Academic Analysis / SYN Flooding — Yetkili Akademik Analiz

## Özet / Summary
Bu repo, yetkilendirilmiş bir akademik çalışma kapsamında gerçekleştirilen SYN Flooding deneyinin **sanitazed (anonimleştirilmiş)** raporunu, ölçüm grafiklerini ve güvenli olarak yerel ortamda (local) yeniden üretilebilecek bir laboratuvar setup'ını içerir.  
This repository contains a sanitized version of an authorized academic SYN Flooding experiment report, measurement graphs, and a reproducible local lab setup for safe educational use.

---

## İzin / Permission
Bu çalışma, raporun sahibi tarafından belirtilen şekilde akademik izinle gerçekleştirilmiştir. README ve `docs/permission_statement.pdf` dosyasında paylaşılacak kısa izin beyanı bulunmalıdır. Repo'ya **hiçbir çalıştırılabilir saldırı script'i**, ham paket yakalama (pcap) dosyası veya hedef IP/hostname içeren ham loglar eklenmemiştir.  
This work was conducted under written authorization. The repo intentionally does **not** include runnable attack scripts, raw packet captures (pcap), or un-redacted logs containing target IPs/hostnames.

---

## Neler bulunur / What's included
- `docs/report_sanitized.pdf` — Anonymize edilmiş rapor (PDF). (Eğer PDF oluşturulmadıysa, `docs/report_sanitized.txt` bulunur.)  
- `docs/graphs/` — Performans grafikleri (PNG/SVG) — hassas bilgiler anonimleştirilmiş.  
- `lab/` — Docker-compose tabanlı lokal laboratuvar (webserver + load generator + monitor) ve kullanım talimatları.  
- `examples/commands.md` — Kullanılan araçlara ait örnek komutlar (çalıştırılmaması uyarısıyla birlikte).  
- `anonymize_report.py` — Raporu anonimleştirmek için kullanılan yardımcı script (metin çıkarımı + regex redaction).

---

## Önemli — Yasal & Etik Uyarı / Important — Legal & Ethical Notice
Bu materyaller sadece eğitim ve araştırma amaçlıdır. İçeriği izinsiz olarak gerçek sistemlere karşı kullanmak **yasadışıdır** ve ciddi hukuki sonuçlar doğurur. Herhangi bir sisteme karşı test yapmadan önce **yazılı** izin alınmalıdır.  
These materials are for education and research only. Do NOT use them against real systems without explicit written permission.

---

## Nasıl güvenli şekilde tekrar üretirim? / How to reproduce safely (local only)
1. `git clone` yap.  
2. `cd lab` ve `docker-compose up -d` ile local lab'ı ayağa kaldır. Bu lab **sadece** localhost içinde çalışır. Dış IP'lere yönlendirmeyin.  
3. `run-local.sh` betiğini yerelde çalıştırarak yük testi örneklerini görebilirsiniz.  
4. Raporu yeniden oluşturmak/analiz etmek için `anonymize_report.py` kullanarak orijinal PDF'den anonimleştirilmiş metin çıktısı alın (aşağıdaki "Anonymize script" bölümüne bakın).

---

## Anonymize script (kısaca) / About the anonymize script
`anonymize_report.py` şu adımları dener:
- PyPDF2 veya benzeri yüklüyse PDF'den metin çıkarır, aksi halde salt metin dosyaları üzerinde çalışır.  
- IPv4 adresleri, e-posta adresleri, MAC adresleri, yaygın hostnames/domaınları ve bazı IP-benzeri dizileri regex ile `<REDACTED_...>` şeklinde işaretler.  
- Çıktı olarak `docs/report_sanitized.txt` ve `docs/report_sanitization_log.txt` üretir.  
**Not:** Script görüntülerdeki (screenshot) yazıları veya gömülü resim içeriğini otomatik olarak redakte edemez — bunlar için manuel inceleme ve gerektiğinde görsel redaksiyon (ör. PDF editörü) gereklidir.  
The script produces a sanitized text output and a log of replacements. It cannot redact text inside images/screenshots — manual review is required for those.

---

## License / Lisans
Akademik ve non-commercial kullanım için `CC BY-NC-ND 4.0` önerilir. (Tercihinize göre farklı bir lisans seçebilirsiniz.)

---

## İletişim / Contact
Herhangi bir soru için GitHub Issues kullanın veya repo sahibiyle iletişime geçin.

---