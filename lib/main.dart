import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_app/screens/home_page.dart';

void main() async {
  // init hive.
  await Hive.initFlutter();

  var box = await Hive.openBox('tasks');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
