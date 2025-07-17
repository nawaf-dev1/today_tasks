import 'package:flutter/material.dart';
import 'package:today_tasks/models/add_note_bottom_sheet.dart';

import '../data/task_data.dart';
import '../widgets/task_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      // دعم RTL
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {

                   //استدعينا محتويات الكلاس
                return AddNoteBottomSheet();
                
              },
            );
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text(
            'مهام اليوم',
            style: TextStyle(fontSize: 27, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(234, 22, 125, 209),
          centerTitle: true,
        ),

        backgroundColor: const Color.fromARGB(164, 61, 142, 209),

        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: taskList.length,
          itemBuilder: (BuildContext context, int index) {
            return TaskItem(task: taskList[index]);
          },
        ),
      ),
    );
  }
}
