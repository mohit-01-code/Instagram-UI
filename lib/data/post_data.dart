import 'package:instagram_ui/data/user_data.dart';
import 'package:instagram_ui/utils/constants.dart';

import '../modal/post_model.dart';

List<PostModel> postData = [
  PostModel("cristiano", ronaldoPosts, "Warsaw, Polland", "7,784,177", caption,
      '${base_profile_path}ronaldo_profile.jpeg'),
  PostModel("anushkasharma", ansuhkaPosts, "Mumbai, Maharashtra, India",
      " 2,462,014", anushkaCaption, '${base_profile_path}anushka_profile.jpeg'),
  PostModel(userData[2].username, randomPost, "Palladium Mall, Ahmedabad",
      "246", "Feeling Good...", userData[2].img),
  PostModel('rashmika_mandanna', rashmikaPost, "Heaven", "2,750,745",
      rashmikaCaption, '${base_profile_path}rashmika_profile.png'),
  PostModel('virat.kohli', viratPosts, "Pakistan", "4,456,831", viratCaption,
      '${base_profile_path}virat_profile.png'),
  PostModel('selenagomez', selenaPosts, "Pakistan", "6,087,738", selenaCaption,
      '${base_profile_path}selena_profile.png'),
];

List<String> ronaldoPosts = [
  '${base_post_path}ronaldo_1.jpeg',
  '${base_post_path}ronaldo_2.jpeg',
  '${base_post_path}ronaldo_3.jpeg',
  '${base_post_path}ronaldo_4.jpeg',
];
List<String> ansuhkaPosts = [
  '${base_post_path}anushka_1.jpeg',
];
List<String> randomPost = [
  '${base_post_path}random_1.jpeg',
];
List<String> rashmikaPost = [
  '${base_post_path}rashmika_1.jpeg',
];
List<String> viratPosts = [
  '${base_post_path}virat_1.jpeg',
  '${base_post_path}virat_2.jpeg',
  '${base_post_path}virat_3.jpeg',
];
List<String> selenaPosts = [
  '${base_post_path}selena_1.jpeg',
  '${base_post_path}selena_2.jpeg',
  '${base_post_path}selena_3.jpeg',
];

const String caption = "Final - here we go!!💪🏼\nGood work team!🙌🏼💛💙";
const String anushkaCaption = "La nuit…💗🖤";
const String rashmikaCaption = "When our creativity met the washroom 🌸🥲😂";
const String viratCaption =
    "12 years in test cricket today. Forever grateful 💫🙇🏻‍♂️";
const String selenaCaption =
    "To the person who makes me laugh harder than anyone on this planet. My OG girl. Thas my best friend. Love you T #main #day1";
