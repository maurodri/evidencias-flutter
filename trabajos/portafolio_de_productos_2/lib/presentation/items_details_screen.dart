// ignore_for_file:prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valuekey = ValueKey('ItemDetsilScreen');

  final String product;

  const ItemDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detalles Del Producto'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child: _swiper(),
          ),
          ListTile(
            title: Text(
              'Portatil HP 239 G8 Celeron N4120 8GB 256GB SSD FREEDOS',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            subtitle: Text('Marca Hp', textAlign: TextAlign.left),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: "\$1.900.000",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 20,
                    ),
                    children: const <InlineSpan>[
                      TextSpan(
                        text: '  -50%',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ])),
          ),
          ListTile(
            title: Text(
              '\$950.000',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          ListTile(
            title: Text(
              '• Sistema operativo: FreeDos',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            title: Text(
              '• Familia del procesador: Procesador Intel® Celeron®',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            title: Text(
              '• Procesador: Intel® Celeron® N4120 (frecuencia base de 1,1 GHz, frecuencia de ráfaga de hasta 2,6 GHz',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            title: Text(
              '• Gráficos: Gráficos Intel® UHD',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            title: Text(
              '• Memoria: 8 GB de RAM DDR4-2400 MHz (1 x 4 GB)',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            title: Text(
              'Almacenamiento interno: Unidad de estado sólido SATA 3 TLC M.2 de 256 GBPantalla HD, antirreflectante, de bisel angosto, 35,6 cm (14") en diagonal, 250 nits y 45 % de NTSC (1366 x 768)Batería: Iones de litio de 3 celdas y 41 Wh de larga duración HPInalámbrico: Combinación de Realtek 802.11a/b/g/n/ac (2x2) Wi-Fi® y Bluetooth® 5Teclado estilo isla de tamaño completo, resistente a salpicadurasCámara HD de 720pAltavoces estéreo, micrófono digital integradoMousepad que admite gestos multitáctilesAdaptador de alimentación externa de CA de 45W HP SmartUnidad óptica: No se incluyeDimensiones mínimas (anch. x prof. x alt.): 32,4 x 22,59 x 1,99 cmPeso inicial de 1,47 Kg',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 25.0,
        onPressed: () {},
        label: const Text('Carrito'),
        backgroundColor: Colors.red,
        icon: const Icon(Icons.shopping_cart),
      ),
    );
  }

  Widget _swiper() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 350.0,
          child: Swiper(
            viewportFraction: 0.8,
            scale: 0.9,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset('images/pic$index.jpg');
            },
            itemCount: 4,
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        ),
      ],
    );
  }
}
