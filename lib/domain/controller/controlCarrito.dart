// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore

import 'package:get/get.dart';

class controlCompras  extends GetxController{
  final _producto = 0.obs;

  int get cantidad => _producto.value;

  void addArticulo(){
     _producto.value=_producto.value +1;
  }
  void removeArticulo(){
    if (_producto.value >= 0) {
      _producto.value=_producto.value -1;
    }
  }
}