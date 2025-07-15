# Contributing to Flutter SVGL

Thank you for your interest in contributing to Flutter SVGL! This document outlines the contribution process and guidelines.

## Commit Message Format

We use [Conventional Commits](https://www.conventionalcommits.org/) for our commit messages. This helps us automatically generate changelogs and determine version bumps.

### Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **perf**: A code change that improves performance
- **test**: Adding missing tests or correcting existing tests
- **build**: Changes that affect the build system or external dependencies
- **ci**: Changes to our CI configuration files and scripts
- **chore**: Other changes that don't modify src or test files

### Examples

```
feat: add new OpenAI logo widget
fix: resolve SVG rendering issue in dark mode
docs: update README with new logo examples
style: format code according to dartfmt
refactor: reorganize logo widget structure
perf: optimize SVG loading performance
test: add golden tests for new logos
build: update flutter_svg dependency
ci: add conventional commits validation
chore: update copyright year
```

### Breaking Changes

For breaking changes, add `BREAKING CHANGE:` in the commit footer or add `!` after the type:

```
feat!: change API structure for logo widgets

BREAKING CHANGE: The LogoWidget constructor now requires a `size` parameter
```

## Development Process

1. **Fork the repository**
2. **Create a feature branch** from `master`
3. **Make your changes** following the coding standards
4. **Commit your changes** using conventional commits
5. **Push to your fork** and submit a pull request

## Automated Changelog

Our changelog is automatically generated from commit messages using Release Please. When you follow the conventional commit format:

- `feat:` commits will appear under "Features"
- `fix:` commits will appear under "Bug Fixes"
- `docs:` commits will appear under "Documentation"
- Other types will be categorized accordingly

## Release Process

1. **Automated PR Creation**: Release Please automatically creates a PR with version bumps and changelog updates
2. **Review and Merge**: Maintainers review and merge the release PR
3. **Automated Publishing**: The package is automatically published to pub.dev
4. **GitHub Release**: A GitHub release is created with the changelog

## Questions?

Feel free to open an issue if you have any questions about contributing!
