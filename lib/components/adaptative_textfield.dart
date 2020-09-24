import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;

  AdaptativeTextField({this.label, this.controller, this.keyboardType = TextInputType.text, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
          controller: controller,
          keyboardType: keyboardType,
          onSubmitted: onSubmitted,
          placeholder: label,
        )
        : TextField(
            controller: controller,
            keyboardType: keyboardType,
            onSubmitted: onSubmitted,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: label,
            ),
          );
  }
}
