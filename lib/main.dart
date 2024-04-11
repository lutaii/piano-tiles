import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano Tiles Scroll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PianoTilesScroll(),
    );
  }
}

class PianoTilesScroll extends StatefulWidget {
  @override
  _PianoTilesScrollState createState() => _PianoTilesScrollState();
}

class _PianoTilesScrollState extends State<PianoTilesScroll> {
  final double tileHeight = 100.0;
  final int numTiles = 10;
  final double scrollSpeed = 1.0; // Adjust scrolling speed

  ScrollController _controller = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(milliseconds: 16), (timer) {
      _controller.animateTo(
        _controller.offset + scrollSpeed,
        duration: Duration(milliseconds: 16),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Piano Tiles Scroll'),
      ),
      body: ListView.builder(
        controller: _controller,
        itemCount: numTiles,
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 16),
            height: tileHeight,
            color: Colors.grey[index % 2 == 0 ? 100 : 200],
            child: Center(
              child: Text(
                'Tile $index',
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}
