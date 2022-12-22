import 'package:flutter/material.dart';
import 'package:palabras/presentation/random_words.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Palabras Seleccionadas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const RandomWords(),
    );
  }
}
