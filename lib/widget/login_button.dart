import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/layout.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        margin: EdgeInsets.symmetric(horizontal: Layout.width(context) * 0.05),
        decoration: const BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        alignment: Alignment.center,
        child: const Text(
          log_in,
          style: TextStyle(
            color: white,
            fontSize: font_size_14,
          ),
        ),
      ),
    );
  }
}
