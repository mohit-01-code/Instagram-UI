import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_ui/data/user_data.dart';
import 'package:instagram_ui/modal/post_model.dart';
import 'package:instagram_ui/utils/constants.dart';
import 'package:instagram_ui/utils/layout.dart';

class PostWidget extends StatefulWidget {
  final PostModel post;
  const PostWidget({super.key, required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int rand = getRandomNumber(userData.length);
    return Column(
      children: [
        ListTile(
          leading:
              CircleAvatar(foregroundImage: AssetImage(widget.post.profile)),
          title: Row(
            children: [
              Text(
                widget.post.username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              Image.asset('${base_icon_path}Shape_blueTick.png'),
            ],
          ),
          subtitle: Text(widget.post.location),
          trailing: Image.asset('${base_icon_path}Shape_threeDots.png'),
        ),
        SizedBox(
          height: Layout.height(context) * 0.4,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: widget.post.img.map((e) {
              return Image.asset(
                e,
                fit: BoxFit.fill,
              );
            }).toList(),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset('${base_icon_path}Shape_like.png'),
                  const SizedBox(width: 20),
                  Image.asset('${base_icon_path}Shape_comment.png'),
                  const SizedBox(width: 20),
                  Image.asset('${base_icon_path}Shape_message.png'),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < widget.post.img.length; i++)
                          Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _currentPage == i ? Colors.blue : Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Image.asset('${base_icon_path}Shape_save.png')
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    foregroundImage: AssetImage(userData[rand].img),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '   Liked by ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                            text: userData[rand].username,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const TextSpan(
                            text: ' and ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: widget.post.likes,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const TextSpan(
                            text: ' others',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  // Text(
                  //     "Liked by ${userData[0].username} and ${postData[0].likes} others"),
                ],
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${widget.post.username}  ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                        text: widget.post.caption,
                        style: const TextStyle(
                          color: Colors.black,
                          height: 1.4,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  int getRandomNumber(int length) {
    Random random = Random();
    return random.nextInt(length); // Generates a random number between 0 and 9
  }
}
