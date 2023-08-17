import 'package:flutter/material.dart';
import 'package:instagram_ui/data/post_data.dart';
import 'package:instagram_ui/utils/constants.dart';
import 'package:instagram_ui/utils/layout.dart';
import 'package:instagram_ui/widget/home_story_widget.dart';
import 'package:instagram_ui/widget/home_top_widget.dart';
import 'package:instagram_ui/widget/post_widget.dart';

class HomeScreen extends StatefulWidget {
  final dynamic data;
  const HomeScreen({super.key, required this.data});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Layout.height(context) * 0.01),
          const HomeTopWidget(),
          const Divider(),
          const HomeStoryWidget(),
          Container(
            height: 1,
            color: Colors.black.withOpacity(0.2),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: postData.length,
              itemBuilder: (context, index) =>
                  PostWidget(post: postData[index]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('${base_icon_path}Exclude_home.png'),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset('${base_icon_path}Icons_search.png'),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset('${base_icon_path}Shape_new.png'),
              label: "New"),
          BottomNavigationBarItem(
              icon: Image.asset('${base_icon_path}Vector_heart.png'),
              label: "Likes"),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                foregroundImage: AssetImage('${base_img_path}User.png'),
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
