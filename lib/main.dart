import 'package:carrito_compras_getx/domain/controller/controlCarrito.dart';
import 'package:carrito_compras_getx/domain/controller/controlUserFirebase.dart';
import 'package:carrito_compras_getx/domain/controller/controladorUser.dart';
import 'package:carrito_compras_getx/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(controlCompras());
  Get.put(controllerUser());
  Get.put(controlAuthFirebase());
  runApp(const App());
}