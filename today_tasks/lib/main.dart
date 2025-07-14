import 'package:flutter/material.dart';
import 'package:today_tasks/screens/home_screen.dart';
// import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
    
            home: HomeScreen(),
    );
  }
}
