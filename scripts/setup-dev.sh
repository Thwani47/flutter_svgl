#!/bin/bash

# Setup script for Flutter SVGL development environment
# This script sets up the development environment including git hooks

echo "🚀 Setting up Flutter SVGL development environment..."

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed. Please install Flutter first."
    echo "   Visit: https://flutter.dev/docs/get-started/install"
    exit 1
fi

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Install Flutter dependencies
echo "📦 Installing Flutter dependencies..."
flutter pub get

# Set up git hooks
echo "🔧 Setting up git hooks..."
mkdir -p .git/hooks

# Copy pre-commit hook
if [ -f "scripts/pre-commit.sh" ]; then
    cp scripts/pre-commit.sh .git/hooks/pre-commit
    chmod +x .git/hooks/pre-commit
    echo "✅ Pre-commit hook installed"
else
    echo "⚠️  Pre-commit hook script not found"
fi

# Install commitizen globally (optional)
echo "🛠️  Installing commitizen for better commit messages..."
if command -v npm &> /dev/null; then
    npm install -g commitizen cz-conventional-changelog
    echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
    echo "✅ Commitizen installed. Use 'git cz' instead of 'git commit'"
else
    echo "⚠️  npm not found. Skipping commitizen installation."
fi

# Run tests to ensure everything is working
echo "🧪 Running tests..."
flutter test

# Run analysis
echo "🔍 Running analysis..."
flutter analyze

echo "✅ Development environment setup complete!"
echo
echo "📝 Next steps:"
echo "  1. Read CONTRIBUTING_COMMITS.md for commit message guidelines"
echo "  2. Use conventional commits for all changes"
echo "  3. Run 'flutter test' before committing"
echo "  4. Use 'git cz' for guided commit messages (if commitizen is installed)"
echo
echo "🎉 Happy coding!"
