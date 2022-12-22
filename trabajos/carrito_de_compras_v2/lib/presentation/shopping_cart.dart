import 'package:flutter/material.dart';
import 'lista_productos.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;
  const Carrito(this._cart, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Carrito> createState() => _CarritoState(_cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);
  int _itemCount1 = 0;
  int _itemCount2 = 0;
  int _itemCount3 = 0;
  int _itemCount4 = 0;
  int _itemCount5 = 0;

  int sub1 = 0;
  int sub2 = 0;
  int sub3 = 0;
  int sub4 = 0;
  int sub5 = 0;

  int iva1 = 0;
  int iva2 = 0;
  int iva3 = 0;
  int iva4 = 0;
  int iva5 = 0;
  int ivatot = 0;

  int total = 0;

  final List<ListaProductos> _cart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Detalles del Producto',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.pink,
        ),
      ),
      body: GestureDetector(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _cart.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Image(
                            image:
                                NetworkImage(_cart[index].imageURL.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: 250.0,
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Center(
                                  child: Text(
                                    _cart[index].nombre.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    _cart[index].precio.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              Container(
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                        )),
                        if (_cart[index].id.toInt()==1) ...[
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text('subtotal: $sub1'),
                            ],
                          ),
                          Column(
                            children: <Widget>[Text('       IVA: $iva1')],
                          ),
                          Align(
                            child: Text(
                              '        cantidad: $_itemCount1',
                              textAlign: TextAlign.start,
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: mas1,
                                    icon: const Icon(Icons.add_box, color: Colors.green))
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: menos1,
                                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red))
                              ],
                            ),
                          )
                        ],
                        if (_cart[index].id.toInt()==2) ...[
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text('subtotal: $sub2'),
                            ],
                          ),
                          Column(
                            children: <Widget>[Text('       IVA: $iva2')],
                          ),
                          Align(
                            child: Text(
                              '        cantidad: $_itemCount2',
                              textAlign: TextAlign.start,
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: mas2,
                                    icon: const Icon(Icons.add_box, color: Colors.green))
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: menos2,
                                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red))
                              ],
                            ),
                          )
                        ],
                        if (_cart[index].id.toInt()==3) ...[
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text('subtotal: $sub3'),
                            ],
                          ),
                          Column(
                            children: <Widget>[Text('       IVA: $iva3')],
                          ),
                          Align(
                            child: Text(
                              '        cantidad: $_itemCount3',
                              textAlign: TextAlign.start,
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: mas3,
                                    icon: const Icon(Icons.add_box, color: Colors.green))
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: menos3,
                                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red))
                              ],
                            ),
                          )
                        ],
                        if (_cart[index].id.toInt()==4) ...[
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text('subtotal: $sub4'),
                            ],
                          ),
                          Column(
                            children: <Widget>[Text('       IVA: $iva4')],
                          ),
                          Align(
                            child: Text(
                              '        cantidad: $_itemCount4',
                              textAlign: TextAlign.start,
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: mas4,
                                    icon: const Icon(Icons.add_box, color: Colors.green))
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: menos4,
                                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red))
                              ],
                            ),
                          )
                        ],
                        if (_cart[index].id.toInt()==5) ...[
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text('subtotal: $sub5'),
                            ],
                          ),
                          Column(
                            children: <Widget>[Text('       IVA: $iva5')],
                          ),
                          Align(
                            child: Text(
                              '        cantidad: $_itemCount5',
                              textAlign: TextAlign.start,
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: mas5,
                                    icon: const Icon(Icons.add_box, color: Colors.green))
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: menos5,
                                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red))
                              ],
                            ),
                          )
                        ],
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          Container(
              height: 100.0,
              width: 240.0,
              color: Colors.red,
              // ignore: prefer_const_constructors
              child: Column(
                children: [
                  Text('Total: $total',
                      style: const TextStyle(fontSize: 25.0),
                      textAlign: TextAlign.center),
                  Text('Iva total: $ivatot')
                ],
              ))
        ],
      ))),
    );
  }

  void mas1() {
    setState(() {
      _itemCount1 = _itemCount1 + 1;
      sub1 = sub1 + 40000;
      iva1 = (sub1 * 19 / 100) as int;
      total = total + 40000;
      ivatot = ivatot + 7600;
    });
  }

  void menos1() {
    setState(() {
      if (_itemCount1 != 0) {
        _itemCount1 = _itemCount1 - 1;
        sub1 = sub1 - 40000;
        iva1 = (sub1 * 19 / 100) as int;
        total = total - 40000;
        ivatot = ivatot - 7600;
      }
    });
  }

  void mas2() {
    setState(() {
      _itemCount2 = _itemCount2 + 1;
      sub2 = sub2 + 16500;
      iva2 = (sub2 * 19 / 100) as int;
      total = total + 16500;
      ivatot = ivatot + 3135;
    });
  }

  void menos2() {
    setState(() {
      if (_itemCount2 != 0) {
        _itemCount2 = _itemCount2 - 1;
        sub2 = sub2 - 16500;
        iva2 = (sub2 * 19 / 100) as int;
        total = total - 16500;
        ivatot = ivatot - 3135;
      }
    });
  }

void mas3() {
    setState(() {
      _itemCount3 = _itemCount3 + 1;
      sub3 = sub3 + 11000;
      iva3 = (sub3 * 19 / 100) as int;
      total = total + 11000;
      ivatot = ivatot + 2090;
    });
  }

  void menos3() {
    setState(() {
      if (_itemCount3 != 0) {
        _itemCount3 = _itemCount3 - 1;
        sub3 = sub3 - 11000;
        iva3 = (sub3 * 19 / 100) as int;
        total = total - 11000;
        ivatot = ivatot - 2090;
      }
    });
  }

  void mas4() {
    setState(() {
      _itemCount4 = _itemCount4 + 1;
      sub4 = sub4 + 8900;
      iva4 = (sub4 * 19 / 100) as int;
      total = total + 8900;
      ivatot = ivatot + 1691;
    });
  }

  void menos4() {
    setState(() {
      if (_itemCount4 != 0) {
        _itemCount4 = _itemCount4 - 1;
        sub4 = sub4 - 8900;
        iva4 = (sub4 * 19 / 100) as int;
        total = total - 8900;
        ivatot = ivatot - 1691;
      }
    });
  }

  void mas5() {
    setState(() {
      _itemCount5 = _itemCount5 + 1;
      sub5 = sub5 + 17000;
      iva5 = (sub5 * 19 / 100) as int;
      total = total + 17000;
      ivatot = ivatot + 3230;
    });
  }

  void menos5() {
    setState(() {
      if (_itemCount5 != 0) {
        _itemCount5 = _itemCount5 - 1;
        sub5 = sub5 - 17000;
        iva5 = (sub5 * 19 / 100) as int;
        total = total - 17000;
        ivatot = ivatot - 3230;
      }
    });
  }
}
