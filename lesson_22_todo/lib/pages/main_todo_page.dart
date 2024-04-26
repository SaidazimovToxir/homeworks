import 'package:flutter/material.dart';
import 'package:lesson_22_todo/pages/dialog_box.dart';
import 'package:lesson_22_todo/utils/todo_tile.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  // text controller
  final _controller = TextEditingController();

  // List of todo tasks
  List toDoList = [
    ['Bugungi task', 'April 26'],
  ];

  void saveNewTask() {
    setState(() {
      String newTaskName = _controller.text;
      String currentDate = DateTime.now().toString();
      toDoList.add([newTaskName, currentDate]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSaved: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }
  /* DialogBox(
          controller: _controller,
          onSaved: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        ); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Todo",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          /// Notification button
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createNewTask(context),
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 23, bottom: 10, top: 5),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 196, 237, 197),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 30, left: 20),
                    child: const Icon(
                      Icons.check_circle_rounded,
                      size: 28,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Compile Flutter UI App \nchallange and upload it \non GitHub",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(left: 50, top: 35),
                    child: const Text(
                      "1h 25m",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 10, bottom: 5),
            child: Text(
              "Remaining Tasks (${toDoList.length})",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
          //! Add tasks get the float action button
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                taskName: toDoList[index][0],
                date: toDoList[index][1],
              );
            },
          ),
        ],
      ),
    );
  }
}
