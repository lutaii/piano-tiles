import 'package:flutter/material.dart';
import 'package:piano_tiles/widgets/piano_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano Tiles Scroll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PianoScreen(),
    );
  }
}
