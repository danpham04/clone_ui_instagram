import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp({super.key, required this.value, required this.text, this.color, this.size, this.font});
  final double value;
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? font;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: Text(text, style: TextStyle(color: color,fontSize: size, fontWeight: font,),),
    );
  }
}
