import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color1,
      required this.color2,  required this.width, this.border, this.textColor})
      : super(key: key);
  final String text;
  final void Function()? onPressed;
  final Color color1;
  final Color color2;
  final  double width;
  final  BoxBorder? border;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border:border?? Border.all(color: Colors.transparent, width: 0)  ,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [color1, color2],
          )),
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
