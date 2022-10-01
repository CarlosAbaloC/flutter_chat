

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_views/RFInputText.dart';

class RegisterView extends StatelessWidget{

  const RegisterView({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return Scaffold(

      appBar: AppBar(
        title: Text('Registrar'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RFInputText(Logintud: 12,
              Text: "Escribe el usuario",
              Titulo:"Usuario",IcI: Icon(Icons.account_circle_outlined),),

            RFInputText(Logintud: 12,
              Text: "Escribe la contraseña",
              Titulo:"Cotraseña",IcI: Icon(Icons.password),),
            RFInputText(Logintud: 12,
              Text: "Repita la contraseña",
              Titulo:"Contraseña",IcI: Icon(Icons.password),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                OutlinedButton(
                  onPressed: () {
                    // Respond to button press
                    print("Aceptar");
                    Navigator.of(context).popAndPushNamed('/Ventana de login');
                  },
                  child: Text("Aceptar"),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Respond to button press
                    //print("------>>>>>>>  REGISTRO CANCELAR");
                  },
                  child: Text("Cancelar"),
                )
              ],
            )

          ],
        ),

      ),

    );
  }

}