#!/bin/sh

# Script to run in cron for production, once puppet has set everything up
# Only produces output if the `Result:` line does not contain `PASS`

~/bin/metacpan-monitoring-carton exec ~/carton/metacpan-monitoring/bin/swat | tail -1 | grep -v 'Result: PASS'
