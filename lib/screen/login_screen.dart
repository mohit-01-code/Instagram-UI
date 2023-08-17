import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/login_button.dart';

import '../utils/constants.dart';
import '../utils/layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: white,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("${base_img_path}Instagram Logo.png"),
                              SizedBox(height: Layout.height(context) * 0.09),
                              Image.asset("${base_img_path}Oval.png"),
                              SizedBox(height: Layout.height(context) * 0.015),
                              const Text(jacob_w),
                              SizedBox(height: Layout.height(context) * 0.015),
                              LoginButton(onTap: () {
                                Navigator.pushNamed(context, '/auth',
                                    arguments: {'username': jacob_w});
                              }),
                              SizedBox(height: Layout.height(context) * 0.04),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/auth');
                                  },
                                  child: const Text(
                                    switch_account,
                                    style: TextStyle(
                                        color: blue,
                                        fontSize: font_size_14,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(height: Layout.height(context) * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dont_have_an_account,
                  style: TextStyle(color: Colors.black.withOpacity(0.4)),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      sign_up,
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            SizedBox(height: Layout.height(context) * 0.03),
          ],
        ),
      ),
    );
  }
}
