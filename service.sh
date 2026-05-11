#!/usr/bin/env bash
set -euo pipefail

WEB_ROOT="/opt/lab4-service/html"
PORT="8000"

cd "$WEB_ROOT"
exec python3 -m http.server "$PORT"
