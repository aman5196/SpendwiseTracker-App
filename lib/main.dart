import 'package:flutter/material.dart';
import 'package:spendwise_tracker_app/screens/dashboard.dart';

void main()=> runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Spendwise Tracker',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home:Dashboard()
    );
  }
}
