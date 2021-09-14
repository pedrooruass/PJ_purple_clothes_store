import 'package:clothes_store/src/core/screens/main_screen.dart';
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clothes Store",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
