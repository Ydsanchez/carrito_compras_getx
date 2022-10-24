import 'package:carrito_compras_getx/domain/controller/controlCarrito.dart';
import 'package:carrito_compras_getx/ui/pages/carrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    controlCompras controlC = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Productos'),
        actions: [
          IconButton(onPressed: (){
            Get.to(() => const Carrito());
          }, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.exit_to_app_outlined)),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                controlC.removeArticulo();
              }, icon: const Icon(Icons.remove_circle)),
              const Text('Mouse Option'),
              IconButton(onPressed: (){
                controlC.addArticulo();
              }, icon: const Icon(Icons.add_circle)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('${controlC.cantidad}')),
            ],
          ),
        ],
      ),
    );
  }
}