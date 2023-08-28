import 'package:flutter/material.dart';
import 'package:sai_vinayak_power_systems/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVPS',
      color: Colors.red,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),
      home: Home(),
      initialRoute: Home.id,
      routes: {
        Home.id : (context) => Home(),
      },
    );
  }
}
