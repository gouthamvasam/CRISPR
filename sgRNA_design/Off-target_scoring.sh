#!/bin/bash
# Bash script to get off-target scores using CFD
# This assumes you have a script called 'cfd_score.py' and a file with potential off-target sites 'offTargets.txt'

# Run the CFD scoring script
python cfd_score.py -i offTargets.txt -o offTargetScores.csv
