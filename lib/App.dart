

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}): super(key:key);

  RFInputText2 input1 = RFInputText2();
  RFInputText2 input2 = RFInputText2();
  RFInputText2 input3 = RFInputText2();


  void btnPressed() {

    print("Hola: " + );
    print("Hola: " + );
    print("Hola: " + );

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
                    onPressed: btn1Pressed,
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
          backgroundColor: Colors.deepPurple
        ),

      ),

    );
  }

}