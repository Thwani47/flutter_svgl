# Flutter SVGL Development Makefile

.PHONY: help install generate analyze format test golden build clean dev

help: ## Show this help message
	@echo "Flutter SVGL Development Commands"
	@echo "================================"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies
	@echo "📦 Installing dependencies..."
	@flutter pub get
	@cd example && flutter pub get

generate: ## Generate code from assets
	@echo "🔄 Generating code..."
	@dart tool/generate_logos_and_tests.dart

analyze: ## Analyze code
	@echo "🔍 Analyzing code..."
	@flutter analyze

format: ## Format code
	@echo "🎨 Formatting code..."
	@dart format .

format-check: ## Check code formatting
	@echo "🎨 Checking code formatting..."
	@dart format --output=none --set-exit-if-changed .

test: ## Run tests
	@echo "🧪 Running tests..."
	@flutter test

golden: ## Update golden files
	@echo "🖼️ Updating golden files..."
	@flutter test --update-goldens

build: ## Build example app
	@echo "🔨 Building example app..."
	@cd example && flutter build web --release

clean: ## Clean build artifacts
	@echo "🧹 Cleaning..."
	@flutter clean
	@cd example && flutter clean

dev: install generate analyze format-check test ## Run full development check

ci: install generate analyze format-check test ## Run CI checks

release-check: dev build ## Check if ready for release
	@echo "🚀 Release checks complete!"

coverage: ## Generate test coverage
	@echo "📊 Generating coverage..."
	@flutter test --coverage
	@genhtml coverage/lcov.info -o coverage/html

