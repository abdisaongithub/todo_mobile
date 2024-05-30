import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_mobile/pages/streak/streak_page.dart';

class SigninPage extends StatefulWidget {
  static String route = '/signin';

  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            // Container(
            //   height: 80,
            //   width: MediaQuery.sizeOf(context).width * 0.5,
            //   decoration: const BoxDecoration(
            //     color: Colors.grey,
            //   ),
            //   child: const Center(
            //     child: Text(
            //       'Navbar',
            //       style: TextStyle(
            //         fontSize: 26,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ),
            // ),
            // const Expanded(
            //   child: SizedBox(),
            // ),
            const SizedBox(
              height: 40,
            ),

            Container(
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.6,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Let\'s get it done',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Sign In to continue',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Email Address'),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'someone@example.com',
                        
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Password'),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '******',

                      ),
                    ),
                    const SizedBox(height: 20, ),
                    Row(children: [
                      Checkbox(value: false, onChanged: (change){}),
                      Text('Remember Me'),
                      const Expanded(child: SizedBox(),),
                      Text('Forgot Password?'),
                      
                    ],),
                    const SizedBox(height: 20, ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, StreakPage.route);
                      },
                      child: Container(
                        height: 40,
                        // width: 180,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF7dc62f),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Icon(
                            //   Icons.settings,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.label,
    required this.placeholder,
  });

  final String label;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Container(
            width: 300,
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 4,
            ),
            decoration: const BoxDecoration(color: Colors.white),
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.6),
                      width: 0.6,
                    )),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 4,
                ),
                isDense: true,
                fillColor: Colors.white,
              ),
              enabled: true,
              controller: new TextEditingController(
                text: placeholder,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
