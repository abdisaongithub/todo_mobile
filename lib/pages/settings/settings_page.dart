import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_mobile/pages/streak/streak_page.dart';

class SettingsPage extends StatefulWidget {
  static String route = '/settings';

  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            Container(
              height: 80,
              width: MediaQuery.sizeOf(context).width * 0.5,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: const Center(
                child: Text(
                  'Navbar',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // const Expanded(
            //   child: SizedBox(),
            // ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 62,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.5,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.6,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SettingItem(
                    label: 'Name',
                    placeholder: 'John Doe',
                  ),
                  const SettingItem(
                    label: 'E-mail',
                    placeholder: 'johndoe@mail.com',
                  ),
                  const SettingItem(
                    label: 'Password',
                    placeholder: '*********',
                  ),
                  const SettingItem(
                    label: 'Country',
                    placeholder: 'Ethiopia',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, StreakPage.route);
                    },
                    child: Container(
                      height: 40,
                      width: 180,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Update Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
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
