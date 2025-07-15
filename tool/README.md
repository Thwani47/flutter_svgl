# Code Generation Tools

This directory contains tools for generating SVG logo classes and their corresponding tests.

## Files

- `common.dart` - Shared utility functions and logic for all generators
- `generate_logos.dart` - Generates logo classes from SVG files
- `generate_tests.dart` - Generates test files for logo classes

## Usage

### Run script to fetch SVG data

```bash
dart tool/fetch_svg_data.dart
```

### Generate logos for all categories

```bash
dart tool/generate_logos.dart
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

## File Structure

```bash
tool/
├── common.dart                     # Shared utilities
├── generate_logos.dart             # Logo generator
├── generate_tests.dart             # Generic test generator
└── README.md                       # This file
```
