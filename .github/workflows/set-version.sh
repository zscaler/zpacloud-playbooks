#!/usr/bin/env bash

SCRIPT_BASE="$(cd "$( dirname "$0")" && pwd )"
ROOT=${SCRIPT_BASE}/..

# Exit immediately if any command exits with a non-zero status
set -e

# Usage
print_usage() {
    echo "Set the app/add-on version"
    echo ""
    echo "Usage:"
    echo "  set-version.sh <new-version>"
    echo ""
}

# if less than one argument supplied, display usage
if [  $# -lt 1 ]
then
    print_usage
    exit 1
fi

# check whether user had supplied -h or --help. If yes, display usage
if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    print_usage
    exit 0
fi

echo "Setting new version to $1"

# Set version in pyproject.toml
echo "Updating pyproject.toml"
grep -E '^version = ".+"$' "$ROOT/pyproject.toml" || exit 1
sed -i.bak -E "s/^version = \".+\"$/version = \"$1\"/" "$ROOT/pyproject.toml" && rm "$ROOT/pyproject.toml.bak"
