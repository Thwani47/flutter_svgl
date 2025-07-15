# Contributing to Flutter SVGL

Thank you for your interest in contributing to Flutter SVGL! This document provides guidelines and information for contributors.

## 🚀 Getting Started

### Prerequisites

- Flutter 3.19.0 or later
- Dart SDK
- Git

### Setup

1. **Fork the repository** on GitHub
2. **Clone your fork**:

   ```bash
   git clone https://github.com/Thwani47/flutter_svgl.git
   cd flutter_svgl
   ```

3. **Install dependencies**:

   ```bash
   make install
   # or
   flutter pub get
   ```

## 📝 Development Workflow

### Before Making Changes

1. **Create a new branch** for your feature/fix:

   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Ensure everything works**:

   ```bash
   make dev
   ```

### Making Changes

#### Adding New SVG Logos

1. **Add SVG files** to the appropriate category directory (e.g., `assets/ai/`)
2. **Generate code** from the new assets:

   ```bash
   make generate
   ```

3. **Update golden files** if needed:

   ```bash
   make golden
   ```

4. **Run tests** to ensure everything works:

   ```bash
   make test
   ```

#### Modifying Existing Code

1. **Make your changes** to the source code
2. **Format the code**:

   ```bash
   make format
   ```

3. **Analyze the code**:

   ```bash
   make analyze
   ```

4. **Run tests**:

   ```bash
   make test
   ```

### Code Generation

This project uses code generation extensively. The tools are located in `tool/`:

- **Never manually edit generated files** in `lib/src/` or `test/`
- **Always run code generation** after adding/removing SVG files
- **Commit generated files** along with your changes

### Testing

We use several types of tests:

1. **Golden tests** - Visual regression tests for SVG rendering

**Running tests:**

```bash
make test           # Run all tests
make golden         # Update golden files
make coverage       # Generate coverage report
```

### Code Quality

We maintain high code quality standards:

- **Code formatting** - Use `dart format`
- **Code analysis** - Must pass `flutter analyze`
- **Test coverage** - Maintain good test coverage

### Pre-commit Hooks

The repository includes pre-commit hooks that run automatically:

- Code formatting check
- Code analysis
- Test execution
- Code generation (if assets changed)

## 🎯 Contribution Guidelines

### Issues

Before creating a new issue:

1. **Search existing issues** to avoid duplicates
2. **Use issue templates** when available
3. **Provide clear reproduction steps** for bugs
4. **Include relevant system information**

### Pull Requests

1. **Keep PRs focused** - One feature/fix per PR
2. **Write clear commit messages**
3. **Update documentation** if needed
4. **Ensure all checks pass**
5. **Request review** from maintainers

### Commit Messages

Use conventional commit format:

```bash
type(scope): description

[optional body]

[optional footer]
```

**Types:**

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Test changes
- `chore`: Maintenance tasks

**Examples:**

```bash
feat(ai): add OpenAI logo
fix(rendering): correct aspect ratio handling
docs(readme): update installation instructions
```

### Code Style

- Follow [Dart style guide](https://dart.dev/guides/language/effective-dart/style)
- Use `dart format` for formatting
- Add documentation for public APIs
- Keep functions small and focused

## 🔧 Development Tools

### Available Commands

```bash
make help           # Show all available commands
make dev            # Run full development check
make ci             # Run CI checks
make test           # Run tests
make golden         # Update golden files
make generate       # Generate code
make analyze        # Analyze code
make format         # Format code
make build          # Build example app
make clean          # Clean build artifacts
make coverage       # Generate test coverage
```

### Scripts

- `./scripts/dev.sh` - Development checks
- `./scripts/dev.sh --goldens` - Update golden files
- `./scripts/dev.sh --build` - Build example app

## 📦 Release Process

1. **Update version** in `pubspec.yaml`
2. **Update CHANGELOG.md**
3. **Run release check**:

```bash
   make release-check
```

1. **Create tag**:

   ```bash
   git tag v0.1.0
   git push origin v0.1.0
   ```

2. **GitHub Actions** will automatically publish to pub.dev

## 🏗️ CI/CD

The project uses GitHub Actions for CI/CD:

- **Tests** - Run on every push/PR
- **Golden Tests** - Validate visual consistency
- **Code Generation** - Ensure generated code is up-to-date
- **Release** - Publish to pub.dev on tagged releases

## 🤝 Getting Help

- **GitHub Issues** - For bugs and feature requests
- **GitHub Discussions** - For questions and general discussion
- **Email** - For security issues or private matters

## 📄 License

By contributing to Flutter SVGL, you agree that your contributions will be licensed under the same license as the project.

## 🙏 Recognition

All contributors will be recognized in the project's README and release notes.

Thank you for contributing to Flutter SVGL! 🎉
