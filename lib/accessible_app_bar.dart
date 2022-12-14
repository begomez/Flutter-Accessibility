import 'package:accessibility_sample/accessible_text.dart';
import 'package:flutter/material.dart';

class AccessibleAppBar extends StatelessWidget {
  final String text;

  const AccessibleAppBar({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 50),
      child: AccessibleText(
        text: text,
      ),
    );
  }
}
