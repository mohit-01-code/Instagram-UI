import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/constants.dart';
import 'package:instagram_ui/utils/layout.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 34),
      height: 28,
      width: Layout.width(context) * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('${base_icon_path}Shape_camera.png'),
          Expanded(child: Image.asset('${base_img_path}Instagram Logo.png')),
          Image.asset('${base_icon_path}Shape_ig.png'),
          Image.asset('${base_icon_path}Shape_message.png'),
        ],
      ),
    );
  }
}
