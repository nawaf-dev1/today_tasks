
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
   onPressed: (){

    
   },
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(Colors.blue),
     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  ),
   child: Text("click here", style: TextStyle(fontSize: 19,color: Colors.white),),
);
  }
}