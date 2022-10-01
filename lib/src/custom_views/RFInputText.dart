


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RFInputText extends StatelessWidget {

  final String Inicial;
  final int Logintud;
  final String Text;
  final String Titulo;
  final Icon IcI;
  final Icon IcD;

  const RFInputText({Key? key, this.Inicial = "",
    this.Logintud = 30,
    this.Text = "",
    this.Titulo = "",
    this.IcI = const Icon(Icons.favorite),
    this.IcD = const Icon(Icons.check_circle)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.deepOrange,
      initialValue: this.Inicial,
      maxLength: Logintud,
      decoration: InputDecoration (
        icon: this.IcI,
        labelText: this.Titulo,
        labelStyle: TextStyle(color: Colors.lightGreen),
      ),
    );

  }


}