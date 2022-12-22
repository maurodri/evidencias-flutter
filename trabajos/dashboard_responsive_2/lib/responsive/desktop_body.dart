import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myDrawer,
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return MyBox(
                            cont: index,
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return MyTile(
                          cont: index,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red[400],
                        ),
                        child: Center(
                            child: Stack(
                          children: [
                            Image.asset('images/lateral.jpg', fit: BoxFit.fill),
                            const Text(
                              'Nueva Targeta Grafica 50% Descuento ',
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red[200],
                          ),
                          child: Center(
                              child: Stack(
                            children: [
                              Image.asset('images/lateral_dos.jpg',
                                  fit: BoxFit.fill),
                              const Text(
                                'Nuevo auto Audi',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
