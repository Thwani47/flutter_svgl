# Flutter SVGL

Flutter SVGL is an open-source Flutter package that provides a collection of high-quality branded SVG logos as ready-to-use Flutter widgets.

This package is powered by the official [pheralb/svgl](https://github.com/pheralb/svgl) repository, which maintains a wide range of SVG logos for various brands and organizations.

## ✨ Features

- [x] **Pre-built SVG Logo Widgets** -Access branded logos easily via simple static getters (e.g., SVGL.Figma).

- [x] **Easy Integration** - No need to manage SVG assets manually—just import and use.

- [x] **Light & Dark Mode Friendly** - Logos render crisply and adapt well to different themes.

- [x] **Scalable & Customizable** -Pass optional `width`, `height`, and `color` parameters to adjust icons dynamically.

## 🚀 Getting Started

```yaml
dependencies:
  flutter_svgl: ^0.1.0
```

## 🎯 Usage

Import the package:

```dart
import 'package:flutter_svgl/flutter_svgl.dart';
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_svgl/flutter_svgl.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter SVGL Example')),
        body: Center(
          child: SVGL.Figma(width: 100, height: 100, color: Colors.blue),
        ),
      ),
    );
  }
}
```

📦 Available Logos

The list of available logos is extensive. You can find the complete list on the [official svgl website](https://svgl.app/).

Example usage for popular brands:

```dart
SVGL.Figma();
SVGL.Google();
SVGL.Facebook();
```

🧑‍💻 Contributing
We welcome contributions!
Here’s how you can help:

- Add new logos from pheralb/svgl
- Improve customization options
- Submit issues or pull requests
