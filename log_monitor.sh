#!/bin/bash
# log_monitor.sh - scan system.log for ERROR or WARNING and report counts
LOGFILE="system.log"
if [ ! -f "$LOGFILE" ]; then
  echo "Log file not found: $LOGFILE"
  exit 1
fi
ERRORS=$(grep -c "ERROR" "$LOGFILE" || true)
WARNINGS=$(grep -c "WARNING" "$LOGFILE" || true)
echo "Scanned $LOGFILE"
echo "ERROR entries: $ERRORS"
echo "WARNING entries: $WARNINGS"
echo "Recent lines with ERROR or WARNING:"
grep -nE "ERROR|WARNING" "$LOGFILE" || true
