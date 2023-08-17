import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/layout.dart';

class LoginInputField extends StatelessWidget {
  final String? username;
  final String hintText;
  final _passwordFocusNode = FocusNode();
  LoginInputField({super.key, required this.hintText, this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      margin: EdgeInsets.symmetric(horizontal: Layout.width(context) * 0.05),
      child: TextFormField(
        focusNode: username != null ? _passwordFocusNode : null,
        style: const TextStyle(
          fontSize: font_size_14,
          color: input_text_color,
        ),
        decoration: InputDecoration(
          labelText: username,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.4)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 14),
          filled: true,
          fillColor: form_input_bg,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
