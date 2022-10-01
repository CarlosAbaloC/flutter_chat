

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameBox extends StatelessWidget {
  final String nombre;

  const NameBox({Key? key, required this.nombre}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
        ),
    );
  }

}