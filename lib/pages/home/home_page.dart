import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todo_mobile/pages/auth/singin_page.dart';

import '../todo/todo_page.dart';

class HomePage extends StatefulWidget {
  static String route = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, SigninPage.route);
              },
              child: Container(
                height: 80,
                width: MediaQuery.sizeOf(context).width * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: const Center(
                  child: FlutterLogo(),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width * 0.7,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: const Center(
                child: Text('Start Your Journey Here'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, TodoPage.route);
              },
              child: Container(
                height: 60,
                width: MediaQuery.sizeOf(context).width * 0.4,
                decoration: BoxDecoration(
                  color: const Color(0xFF7dc62f),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Yes, I want to get stuff done',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Free to use, no excuses to hold back',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
