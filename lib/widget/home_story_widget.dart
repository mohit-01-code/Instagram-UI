import 'package:flutter/material.dart';
import 'package:instagram_ui/data/user_data.dart';
import 'package:instagram_ui/utils/layout.dart';

class HomeStoryWidget extends StatelessWidget {
  const HomeStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Layout.width(context) * 0.97,
      height: 100,
      child: ListView.builder(
        itemCount: userData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.purple.shade900,
                        Colors.purple.shade100,
                      ]),
                ),
                child: CircleAvatar(
                    foregroundImage: AssetImage(userData[index].img)),
              ),
              Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    userData[index].username,
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          );
        },
      ),
    );
  }
}
