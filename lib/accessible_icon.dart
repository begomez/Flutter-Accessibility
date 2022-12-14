import 'package:flutter/material.dart';

class AccessibleIcon extends StatelessWidget {
  final IconData iconData;
  final String descrip;

  const AccessibleIcon({required this.iconData, required this.descrip, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      semanticLabel: descrip,
      iconData,
      size: 100,
    );
  }
}
