import 'package:flutter/material.dart';

void main() {
  runApp(const AmmsApp());
}

class AmmsApp extends StatelessWidget {
  const AmmsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Container(),
      debugShowCheckedModeBanner: false,
    );
  }
}
