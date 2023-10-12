import 'package:flutter/material.dart';

import '../../constants.dart';
class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key, required this.text,required this.onPressed, required this.color1, required this.color2}) : super(key: key);
  final String  text;
  final void Function()? onPressed;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration:  BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                color1,
                color2
              ],
            )
        ),
        width:280,
        height:45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed:onPressed,child:Text(text, style: const TextStyle(fontSize:20, color: Colors.white),),),
      )
   ;
  }
}
