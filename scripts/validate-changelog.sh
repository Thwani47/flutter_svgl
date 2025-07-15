#!/bin/bash

# Changelog validation script
# This script validates that the changelog follows Keep a Changelog format

CHANGELOG_FILE="CHANGELOG.md"
ERRORS=0

echo "🔍 Validating changelog format..."

# Check if changelog file exists
if [ ! -f "$CHANGELOG_FILE" ]; then
    echo "❌ $CHANGELOG_FILE not found"
    exit 1
fi

# Check for required sections
if ! grep -q "# Changelog" "$CHANGELOG_FILE"; then
    echo "❌ Missing main 'Changelog' heading"
    ERRORS=$((ERRORS + 1))
fi

if ! grep -q "## \[Unreleased\]" "$CHANGELOG_FILE"; then
    echo "❌ Missing [Unreleased] section"
    ERRORS=$((ERRORS + 1))
fi

# Check for Keep a Changelog link
if ! grep -q "keepachangelog.com" "$CHANGELOG_FILE"; then
    echo "❌ Missing reference to Keep a Changelog"
    ERRORS=$((ERRORS + 1))
fi

# Check for Semantic Versioning link
if ! grep -q "semver.org" "$CHANGELOG_FILE"; then
    echo "❌ Missing reference to Semantic Versioning"
    ERRORS=$((ERRORS + 1))
fi

# Check for proper version format
if ! grep -qE "## \[[0-9]+\.[0-9]+\.[0-9]+\]" "$CHANGELOG_FILE"; then
    echo "❌ No properly formatted version entries found"
    ERRORS=$((ERRORS + 1))
fi

# Check for comparison links at the bottom
if ! grep -qE "\[.*\]: https://github\.com/.*/compare/" "$CHANGELOG_FILE"; then
    echo "❌ Missing comparison links at the bottom"
    ERRORS=$((ERRORS + 1))
fi

if [ $ERRORS -eq 0 ]; then
    echo "✅ Changelog format is valid!"
    exit 0
else
    echo "❌ Found $ERRORS issue(s) in changelog format"
    exit 1
fi
