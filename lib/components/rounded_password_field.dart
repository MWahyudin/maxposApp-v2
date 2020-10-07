import 'package:flutter/material.dart';
import 'package:maxposv2/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final controller;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(
              Icons.lock,
              color: Colors.blue,
            ),
            suffixIcon: Icon(Icons.visibility, color: Colors.blue),
            border: InputBorder.none),
      ),
    );
  }
}
