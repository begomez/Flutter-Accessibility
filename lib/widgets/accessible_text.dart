import 'package:flutter/material.dart';

class AccessibleText extends StatelessWidget {
  final String text;
  final String? descrip;
  final TextStyle? style;

  const AccessibleText({required this.text, this.descrip, this.style, super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? Theme.of(context).textTheme.bodyMedium,
      semanticsLabel: descrip ?? text,
    );
  }
}
