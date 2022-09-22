import 'package:flutter/material.dart';
import 'package:personal_blog/routes/routes.dart';
import 'package:personal_blog/screens/screen_add_blog.dart';
import 'package:personal_blog/screens/screen_home.dart';
import 'package:personal_blog/screens/screen_view_blog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: routeRoot,
      routes: {
        routeRoot: (context) => const ScreenHome(),
        routeAddblog: (context) => ScreenAddBlog(),
        routeViewBlog: (context) => const ScreenViewBlog(),
      },
    );
  }
}
