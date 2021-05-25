#!/usr/bin/env bash
set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

echo "# ============================================================================ #"
echo "                         S t a r t i n g   K a f k a"
echo "# ============================================================================ #"
kafka-server-start.sh /kafka/config/server.properties

