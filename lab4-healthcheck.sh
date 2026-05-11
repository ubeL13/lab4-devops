#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:8000/"
CODE=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$URL" || echo "000")

if [[ "$CODE" == "200" ]]; then
  echo "OK: $URL returned $CODE"
  exit 0
else
  echo "FAIL: $URL returned $CODE"
  exit 1
fi
