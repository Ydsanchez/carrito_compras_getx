// ignore_for_file: file_names, camel_case_types

import 'package:carrito_compras_getx/data/services/peticionesUser.dart';
import 'package:carrito_compras_getx/domain/models/user.dart';
import 'package:get/get.dart';

class controllerUser extends GetxController {
  final Rxn<List<User>> _users = Rxn<List<User>>();

  List<User>? get listaUser => _users.value;

  Future<void> enviaruser(String u, String p) async{
    _users.value = await peticionesUser.validarUser(u, p);
  }
}