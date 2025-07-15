#!/bin/bash

# Pre-commit hook to validate conventional commits
# To install: cp scripts/pre-commit.sh .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get the commit message
commit_message=$(cat "$1")

# Conventional commit regex
conventional_commit_regex="^(feat|fix|docs|style|refactor|perf|test|build|ci|chore)(\(.+\))?: .{1,50}"

# Check if commit message follows conventional commits format
if [[ ! $commit_message =~ $conventional_commit_regex ]]; then
    echo -e "${RED}❌ Commit message does not follow conventional commits format${NC}"
    echo -e "${YELLOW}Expected format: <type>[optional scope]: <description>${NC}"
    echo -e "${YELLOW}Types: feat, fix, docs, style, refactor, perf, test, build, ci, chore${NC}"
    echo -e "${YELLOW}Example: feat: add new OpenAI logo widget${NC}"
    echo
    echo -e "${RED}Your commit message:${NC}"
    echo "$commit_message"
    exit 1
fi

echo -e "${GREEN}✅ Commit message follows conventional commits format${NC}"
exit 0
