import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      title: 'flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter layout demo'),
        ),
        body: Center(child: _buildImageColumn()),
        persistentFooterButtons: <Widget>[
          FloatingActionButton(
            onPressed: (() {}),
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.indigo,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageRow(0),
            _buildImageRow(2),
          ],
        ),
      ),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset('images/pic$imageIndex.jpg'),
        ),
      );
  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );
}
