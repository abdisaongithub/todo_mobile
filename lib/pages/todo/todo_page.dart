import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_mobile/pages/streak/streak_page.dart';

class TodoPage extends StatefulWidget {
  static String route = '/todos';

  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
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
              'Be true to yourself',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            const Text(
              'Only create tasks you\'re committed to complete',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'For today',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'For today',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  for (var i = 0; i < 5; i++)
                    TodoItem(
                      label: 'To-do-item ${i + 1}',
                      checked: checkbox ,
                      onChanged: (change) {
                        setState(() {
                          checkbox = !checkbox;
                        });
                      },
                    ),
                  InkWell(
                    onTap: (){

                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Add Task',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20, ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, StreakPage.route);

              },
              child: Container(
                height: 40,
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Created to-do\'s for tomorrow',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_downward_sharp, color: Colors.white,)
                  ],
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

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.label,
      required this.checked,
      required this.onChanged});

  final String label;
  final bool checked;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: onChanged,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
