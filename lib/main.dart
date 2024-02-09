import 'package:flutter/material.dart';
import 'package:actemo_flutter/components/background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('actemo'),
        ),
        body: Background(),
      ),
    );
  }
}
