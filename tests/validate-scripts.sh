#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "Validating .gitlab-ci.yml..."
python3 -c "import yaml,sys; yaml.safe_load(open(sys.argv[1]))" "$ROOT/.gitlab-ci.yml"
echo "  v .gitlab-ci.yml"
echo; echo "GitLab CI validation passed."
