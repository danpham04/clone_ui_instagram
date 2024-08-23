import 'package:flutter/material.dart';

class IconHome extends StatelessWidget {
  const IconHome({super.key, required this.event, required this.icon, this.color, this.size});
  final void Function() event;
  final IconData icon;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: event,
      icon: Icon(icon),
      color: color,
      iconSize: size,
    );
  }
}
