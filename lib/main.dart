import 'package:expert_robot/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() {
  /// Init dependency injection
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expert Robot',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage()
    );
  }
}