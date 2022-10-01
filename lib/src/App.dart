

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_abalo/src/custom_views/RFInputText2.dart';

import 'custom_views/RFInputText.dart';

class App extends StatelessWidget {
  App({Key? key}): super(key:key);

  RFInputText2 input1 = RFInputText2();
  RFInputText2 input2 = RFInputText2();
  RFInputText2 input3 = RFInputText2();


  void btnPulsar() {

    print("Hola: " + input1.getText());
    print("Hola: " + input2.getText());
    print("Hola: " + input3.getText());

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Text("Prueba AppBar"),
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              input1,
              input2,
              input3,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: btnPulsar,
                    child: Text("Boton"),
                  ),

                  OutlinedButton(onPressed: () {
                    print("Has presionado el boton");
                  }
                  , child: Text("Boton dos"),
                  )
                ],
              )
            ],
          ),
        ),

        backgroundColor: Colors.deepPurple,

      ),

    );
  }

}