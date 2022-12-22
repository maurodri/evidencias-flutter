import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final int cont;

  const MyTile({Key? key, required this.cont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 98,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/tec${cont + 1}.jpg'),
                  alignment: Alignment.topLeft),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200]),
          
            child: Column(
              children: [
               
                   if (cont == 0) ...[
                      const Text("Estuche de audifonos", style: TextStyle(
                        fontSize: 25.0,
                      ),),
                     const Text("\$50000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] else if (cont == 1) ...[
                     const Text("Audifonos inalambricos", style: TextStyle(
                        fontSize: 25.0,
                      )),
                     const Text("\$80000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] else if (cont == 2) ...[
                     const Text("Xbox personalizada", style: TextStyle(
                        fontSize: 25.0,
                      )),
                     const Text("\$1800000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] else if (cont == 3) ...[
                     const Text("Control de Xbox personalizado", style: TextStyle(
                        fontSize: 25.0,
                      )),
                     const Text("\$160000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] else if (cont == 4) ...[
                     const Text("TV LG 55 pulgadas", style: TextStyle(
                        fontSize: 25.0,
                      )),
                     const Text("\$2700000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] else if (cont == 5) ...[
                     const Text("Laptop Hp", style: TextStyle(
                        fontSize: 25.0,
                      )),
                     const Text("\$2100000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] else if (cont == 6) ...[
                     const Text("Nokia", style: TextStyle(
                        fontSize: 25.0,
                      )),
                     const Text("\$80000"),
                     IconButton(onPressed: (() {}), 
                      icon: const Icon(Icons.shopping_cart)),
                   ] 
            
                 ],
            )
            
          ),
    );
  }
}
