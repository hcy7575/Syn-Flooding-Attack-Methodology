# Command Examples (Documentation Only)

> ⚠️ WARNING: These commands are for educational documentation only.
> Do NOT execute them against external systems.

## SYN Flood Testing Tools Used
- hping3 – for generating custom TCP SYN packets
- nping – for crafting SYN flood traffic
- httperf, iperf, siege, tetrate – for measuring performance impact

### Example (Documentation Only)
```bash
# Example of SYN flood (Do NOT run)
hping3 -S -p 80 -i u100 <REDACTED_IP_SPECIFIC>
```
