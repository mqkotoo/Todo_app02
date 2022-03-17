import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final void Function(dynamic) addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: 45.0,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
