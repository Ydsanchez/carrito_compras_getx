import 'package:carrito_compras_getx/ui/auth/login.dart';
import 'package:carrito_compras_getx/ui/authf/loginf.dart';
import 'package:carrito_compras_getx/ui/pages/carrito.dart';
import 'package:carrito_compras_getx/ui/pages/producto.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de Compras',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const login(),
        '/productos': (context) => const Productos(),
        '/carrito': (context) => const Carrito(),
        '/loginf': (context) => const loginF(),
      },
      home: const loginF(),
    );
  }
}