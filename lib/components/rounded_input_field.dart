import 'package:flutter/material.dart';
import 'package:maxposv2/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  // var attController;
  final controller;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText = "Masukan Email",
    this.icon = Icons.email,
    this.onChanged,
    this.controller,
    // this._emailController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey)
        ),
      ),
    );
  }
}