import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:palabras/presentation/my_app.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const Myapp());
}
