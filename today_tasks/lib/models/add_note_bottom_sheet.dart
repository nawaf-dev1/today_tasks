import 'package:flutter/material.dart';
import 'package:today_tasks/widgets/custom_tect_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
      children:const [
      CustomTectField(
hint: "العنوان",
maxLines: 1,
      ),

      SizedBox(height: 15,),
      
          CustomTectField(
hint: "الوصف",
maxLines: 5,

          ),

SizedBox(height: 20,),

CustomButton(),


      ],
      ),
    );
  }
}
