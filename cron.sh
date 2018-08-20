#!/bin/bash

# Script to run in cron for production, once puppet has set everything up
# Only produces output if the last `Result:` line does not contain `PASS`

export SWAT_FILE="/tmp/last_swat_run"
export swat_purge_cache=1

# Run and save output to tmp
~/bin/metacpan-monitoring-carton exec ~/carton/metacpan-monitoring/bin/swat > $SWAT_FILE

# Look at the last line, if it does NOT match 'Result: PASS' then cat
# the whole file for us to debug
tail -1 $SWAT_FILE | grep -v 'FINISHED. OK' && cat $SWAT_FILE
