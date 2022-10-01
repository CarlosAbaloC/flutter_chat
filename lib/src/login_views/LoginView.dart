

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_views/RFInputText.dart';

class LoginView extends StatelessWidget{

  const LoginView({Key? key}) : super(key:key);

  void BotonLogin (String correo, String password) {
    try {
      final datos = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: correo,
        password: password
      );
      print("logeado correctamente");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String correo = "CarlosAbaloC@gmail.com";
    String password= "p@ssw0rd";
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarte'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RFInputText(Inicial:correo ,Logintud: 20,
              Text: "Nombre de usuario",
              Titulo:"Nombre",IcI: Icon(Icons.account_circle_outlined),),
            RFInputText(Inicial:correo,Logintud: 20,
              Text: "Coual es la contraseña",
              Titulo:"Cotraseña",IcI: Icon(Icons.password),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    print("LOGIN $correo $password");
                    BotonLogin(correo,password);
                  },
                  child: Text("Login"),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('/ventana de registro');
                  },
                  child: Text("Registro"),
                )
              ],
            )

          ],
        ),
      ),
    );
  }

}