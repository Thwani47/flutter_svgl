#!/bin/bash

set -e

echo "🔧 Flutter SVGL Development Script"
echo "=================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

function run_step() {
    echo -e "${YELLOW}🔄 $1${NC}"
    if $2; then
        echo -e "${GREEN}✅ $1 - Success${NC}"
    else
        echo -e "${RED}❌ $1 - Failed${NC}"
        exit 1
    fi
    echo ""
}

function check_flutter() {
    flutter --version > /dev/null 2>&1
}

function get_dependencies() {
    flutter pub get
}

function generate_code() {
    dart tool/generate_logos_and_tests.dart
}

function analyze_code() {
    flutter analyze
}

function check_formatting() {
    dart format --output=none --set-exit-if-changed .
}

function run_tests() {
    flutter test
}

function update_goldens() {
    flutter test --update-goldens
}

function build_example() {
    cd example
    flutter pub get
    flutter build web --release
    cd ..
}

# Main execution
echo "Starting development checks..."
echo ""

run_step "Checking Flutter installation" check_flutter
run_step "Getting dependencies" get_dependencies
run_step "Generating code" generate_code
run_step "Analyzing code" analyze_code
run_step "Checking code formatting" check_formatting
run_step "Running tests" run_tests

# Optional steps based on arguments
if [[ "$1" == "--goldens" ]]; then
    run_step "Updating golden files" update_goldens
fi

if [[ "$1" == "--build" ]]; then
    run_step "Building example app" build_example
fi

echo -e "${GREEN}🎉 All checks passed!${NC}"
echo ""
echo "Available options:"
echo "  --goldens  Update golden test files"
echo "  --build    Build example app"
echo ""
echo "To run with options: ./scripts/dev.sh --goldens"
