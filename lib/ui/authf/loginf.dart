// ignore_for_file: unused_import, camel_case_types

import 'package:carrito_compras_getx/domain/controller/controlUserFirebase.dart';
import 'package:carrito_compras_getx/domain/controller/controladorUser.dart';
import 'package:carrito_compras_getx/ui/pages/producto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginF extends StatefulWidget {
  const loginF({super.key});

  @override
  State<loginF> createState() => _loginState();
}

class _loginState extends State<loginF> {
  controlAuthFirebase controlU = Get.find();
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage("https://i.pinimg.com/originals/35/9f/91/359f91043fdad42832dcdfcb4f396965.jpg"),
              ),
              TextField(
                controller: controlUser,
                decoration: const InputDecoration(labelText: 'Ingrese Usuario'),
              ),
              TextField(
                controller: controlContrasena,
                decoration: const InputDecoration(labelText: 'Ingrese la Contraseña'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    
                  }, icon: const Icon(Icons.login)),

                  const SizedBox(width: 20.0,),

                  IconButton(onPressed: (){
                    controlU.registroEmail(controlUser.text, controlContrasena.text).then((value){
                      if (controlU.emailf != 'sin Registro') {
                        Get.offAllNamed('/productos');
                      }else{
                        Get.showSnackbar(
                          const GetSnackBar(
                            title: 'VALIDACION DE USUARIO',
                            message: 'Error Usuario No Existe En LA Base De Datos',
                            icon: Icon(Icons.warning_amber_sharp),
                            duration: Duration(seconds: 4),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    });
                  }, icon: const Icon(Icons.app_registration_rounded)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}