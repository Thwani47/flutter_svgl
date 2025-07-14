# Code Generation Tools

This directory contains tools for generating SVG logo classes and their corresponding tests.

## Files

- `common.dart` - Shared utility functions and logic for all generators
- `generate_logos.dart` - Generates logo classes from SVG files
- `generate_tests.dart` - Generates test files for logo classes
- `generate_logos_and_tests.dart` - Comprehensive generator that creates both logos and tests for all categories

## Usage

### Generate logos for all categories

```bash
dart tool/generate_logos.dart
```

### Generate both logos and tests for all categories

```bash
dart tool/generate_logos_and_tests.dart
```

## Generated Files

### Logo Classes

- Location: `lib/src/{category}_logos.dart`
- Contains: Widget methods for each SVG in the category
- Features: SizedBox wrapper with BoxFit.fill for exact dimensions

### Test Files

- Location: `test/{category}_logos_test.dart`
- Contains: Golden tests for each logo widget
- Features: Tests exact dimensions (48x60) and golden file matching

## Shared Logic

The `common.dart` file provides:

- `fileNameToMethod()` - Converts file names to camelCase method names
- `toPascalCase()` - Converts strings to PascalCase
- `getSvgFiles()` - Gets all SVG files from a directory
- `generateWidgetMethod()` - Generates widget method code
- `generateTestMethod()` - Generates test method code
- `generateLogoClass()` - Generates complete logo class
- `generateTestFile()` - Generates complete test file
- Template functions for imports and class structure

## Adding New Categories

To add a new category:

1. Create an `assets/{category}` directory with SVG files
2. Run `dart tool/generate_logos_and_tests.dart` to generate both logos and tests
3. Update the main SVGL class to include the new category

## File Structure

```bash
tool/
├── common.dart                     # Shared utilities
├── generate_logos.dart             # Logo generator
├── generate_tests.dart             # Generic test generator
├── generate_logos_and_tests.dart   # Comprehensive generator
└── README.md                       # This file
```
