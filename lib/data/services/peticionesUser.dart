// ignore_for_file: file_names, unused_import, camel_case_types

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../domain/models/user.dart';
import 'package:http/http.dart' as http;

class peticionesUser{
  
  static  Future<List<User>> validarUser (String u, String p) async {
    var url = Uri.parse("https://desarolloweb2021a.000webhostapp.com/APIMOVIL/listaruser.php");
    final response = await http.post(url,body: {'user':u, 'pass':p,});
    return compute(convertir, response.body);
  }

  static List<User> convertir(String textobody) {
    final pasar=json.decode(textobody).cast<Map<String,dynamic>>();
    return pasar.map<User>((json)=>User.desdeJson(json)).toList();
  }
}