#!/bin/bash
# Script to analyze SSH brute-force attempts

LOG_FILE="/var/log/auth.log"
OUTPUT="ssh_attacks.log"
REPORT="report.md"

echo "[*] Collecting failed SSH login attempts..."
grep "Failed password" $LOG_FILE > $OUTPUT

echo "[*] Analyzing attacker IP addresses..."
awk '{print $(NF-3)}' $OUTPUT | sort | uniq -c | sort -nr > top_attackers.txt

echo "# SSH Attack Report" > $REPORT
echo "Date: $(date)" >> $REPORT
echo -e "\n## Top-10 attacking IPs:\n" >> $REPORT
head -10 top_attackers.txt >> $REPORT

echo "[*] Report saved to $REPORT"