import 'package:flutter/material.dart';
import 'package:todo_mobile/pages/auth/singin_page.dart';
import 'package:todo_mobile/pages/settings/settings_page.dart';
import 'package:todo_mobile/pages/streak/streak_page.dart';
import 'package:todo_mobile/pages/todo/todo_page.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7dc62f)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        TodoPage.route: (context) => const TodoPage(),
        StreakPage.route: (context) => const StreakPage(),
        SettingsPage.route: (context) => const SettingsPage(),
        SigninPage.route: (context) => const SigninPage(),
      }
    );
  }
}
