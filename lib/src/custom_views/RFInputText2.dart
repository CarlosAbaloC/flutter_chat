

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RFInputText2 extends StatelessWidget{

  RFInputText2({Key? key}) : super(key:key);

  final TextEditingController myController = TextEditingController();

  String getText(){
    return myController.text;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      cursorColor: Colors.deepOrange,
      maxLength: 20,
      onChanged: (String s){
        print(s);
      },
      decoration: InputDecoration(
        icon: Icon(Icons.sailing),
        labelText: 'RF ',
        labelStyle: TextStyle(
          color: Color(0xFF6200EE),
        ),
        helperText: 'Helper text',
        suffixIcon: Icon(
          Icons.access_time,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.amberAccent),
        ),
      ),

    );
  }

}
