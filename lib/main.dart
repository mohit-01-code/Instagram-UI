import 'package:flutter/material.dart';
import 'package:instagram_ui/navigation/routes.dart';
import 'package:instagram_ui/provider/login_provider.dart';
import 'package:instagram_ui/utils/constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: Routes.myRoutes(),
        onGenerateRoute: Routes.onGenerateRoute,
        title: app_title,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: blue),
          useMaterial3: true,
        ),
      ),
    );
  }
}
