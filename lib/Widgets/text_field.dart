import 'package:flutter/material.dart';

import '../constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.icon, required this.text}) : super(key: key);
final IconData icon;
  final String  text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width:300,
      decoration: const BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(13)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xf2ffffff),
              Colors.white38,
            ],
          )
      ),
      child: TextFormField(
        style: const TextStyle(fontSize:15),
        decoration:
          InputDecoration(
          labelStyle: TextStyle(color:blue),
          prefixIcon:Icon(icon,color: amber,),
          labelText:text,
        ) ,
      ),
    );
  }
}
