import 'package:flutter/material.dart';

class PersonInfor extends StatelessWidget {
  const PersonInfor(
      {super.key,
      required this.title,
      required this.subTitle,
      this.color,
      this.size,
      this.fontWeight});

  final String title;
  final String subTitle;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style:
              TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
        ),
      ),
      subtitle: Center(
        child: Text(
          subTitle,
          style:
              TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
