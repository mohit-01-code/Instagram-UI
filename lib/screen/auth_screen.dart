import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/constants.dart';
import 'package:instagram_ui/widget/login_button.dart';
import 'package:instagram_ui/widget/login_input_field.dart';

import '../utils/layout.dart';

class AuthScreen extends StatelessWidget {
  final dynamic data;
  const AuthScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8, top: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('${base_img_path}Shape.png'),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('${base_img_path}Instagram Logo.png'),
                  SizedBox(height: Layout.height(context) * 0.05),
                  LoginInputField(
                      hintText: username,
                      username: data != null ? data['username'] : null),
                  SizedBox(height: Layout.height(context) * 0.01),
                  LoginInputField(hintText: password),
                  SizedBox(height: Layout.height(context) * 0.02),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      forgot_password,
                      style: TextStyle(fontSize: 12, color: blue),
                    ),
                  ),
                  SizedBox(height: Layout.height(context) * 0.03),
                  LoginButton(onTap: () {
                    Navigator.pushNamed(context, '/home',
                        arguments: {'username': jacob_w});
                  }),
                  SizedBox(height: Layout.height(context) * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('${base_img_path}Icon.png'),
                      SizedBox(width: Layout.height(context) * 0.01),
                      const Text(
                        log_in_with_facebook,
                        style: TextStyle(
                          fontSize: 14,
                          color: blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Layout.height(context) * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Layout.width(context) * 0.05),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: Layout.width(context) * 0.05),
                            alignment: Alignment.centerLeft,
                            height: 1,
                            child: const Divider(height: 1),
                          ),
                        ),
                        Center(
                          child: Text(
                            or,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: Layout.width(context) * 0.05),
                            alignment: Alignment.centerRight,
                            height: 1,
                            child: const Divider(height: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Layout.height(context) * 0.03),
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
                            style: TextStyle(color: blue),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(height: Layout.height(context) * 0.03),
            Center(
              child: Text(
                "Instagram from Facebook",
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            ),
            SizedBox(height: Layout.height(context) * 0.02),
          ],
        ),
      ),
    );
  }
}
