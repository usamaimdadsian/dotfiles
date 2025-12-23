#!/bin/bash

COUNT=$(dunstctl history | wc -l)
if ["$COUNT" -gt 0]; then
  echo " $COUNT"
else
  echo ""
fi
