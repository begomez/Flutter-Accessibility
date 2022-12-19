import 'package:flutter/material.dart';

class AccessibleIcon extends StatelessWidget {
  final IconData iconData;
  final String descrip;
  final double size;

  const AccessibleIcon({required this.iconData, required this.descrip, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      semanticLabel: descrip,
      iconData,
      size: size,
    );
  }
}
