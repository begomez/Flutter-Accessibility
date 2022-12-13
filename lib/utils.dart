import 'package:flutter/material.dart';

extension SemanticsDynamicExtension on StatefulWidget {
  Semantics semantics({required String descrip}) => Semantics(
        value: descrip,
        child: this,
      );
}

extension SemanticsStaticExtension on StatelessWidget {
  Semantics semantics({required String descrip}) => Semantics(
        value: descrip,
        child: this,
      );
}
