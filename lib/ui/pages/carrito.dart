import 'package:carrito_compras_getx/domain/controller/controlCarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Carrito extends StatelessWidget {
  const Carrito({super.key});

  @override
  Widget build(BuildContext context) {
    controlCompras controlC = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito Compras'),
      ),
      body: Column(
        
        children: [
          const Text('Factura Compras'),
          Text('Mouse Optico${controlC.cantidad}')
        ],
      ),
    );
  }
}