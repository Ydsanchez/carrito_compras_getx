import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class controlAuthFirebase extends GetxController {
  
  final FirebaseAuth authf = FirebaseAuth.instance;
  final Rx<dynamic> _uid = "".obs;
  final Rx<dynamic> _usuarior = "sin Registro".obs;
  final Rx<dynamic> _mensaje = "".obs;

  

  String get emailf => _usuarior.value;
  String get uid => _uid.value;

  Future<void> registroEmail(String u, String p) async {

    try {
      UserCredential usuario = await authf.createUserWithEmailAndPassword(email: u, password: p);
      _uid.value = usuario.user!.uid;
      _usuarior.value = usuario.user!.email;
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password'){
        return Future.error('The password provided is too weak.');
      }else if (e.code == 'email-elready-in-use') {
        return Future.error('The account already exists for that email.');
      }
    }
  }
}