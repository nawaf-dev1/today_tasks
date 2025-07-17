import 'package:flutter/material.dart';

import '../models/task_model.dart';

class TaskItem extends StatefulWidget {
  final TaskModel task;

  const TaskItem({required this.task,});

  @override
  State<TaskItem> createState() => _TaskItemState();
}



class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // مربع إنجاز فارغ 
            Icon(Icons.check_box_outline_blank, color: Colors.grey),

            SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // العنوان
                  Text(
                    widget.task.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  // الوصف
                  Text(
                    widget.task.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            // ايقونه الحذف
            IconButton(
              onPressed: () {
              
              },
              icon: Icon(Icons.delete, color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
