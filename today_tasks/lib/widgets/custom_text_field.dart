import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;


  const CustomTextField({super.key,required this.hint,required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
  
          maxLines:maxLines ,//عدد الاسطرالمسموح بيها 
        decoration: InputDecoration(
          hintText: hint,//هنا عنوان الحقل
          
          // To delete borders
          enabledBorder: OutlineInputBorder(
            
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 11, 97, 226),
            ),
          ),
          fillColor: Colors.white38,
          filled: true,

          // التحكم في عرض وارتفاع الحقل
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
