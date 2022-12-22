import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final int cont;

  const MyBox({Key? key, required this.cont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic${cont + 1}.jpg'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[300]),
      ),
    );
  }
}
