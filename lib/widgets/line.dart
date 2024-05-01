import 'package:flutter/material.dart';
import 'package:piano_tiles/model/note.dart';
import 'package:piano_tiles/widgets/tile.dart';

class Line extends StatelessWidget {
  final int lineNumber;
  final List<Note> currentNotes;

  const Line({
    super.key,
    required this.currentNotes,
    required this.lineNumber,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double tileHeight = height / 4;

    List<Note> thisLineNotes =
        currentNotes.where((note) => note.line == lineNumber).toList();

    return SizedBox.expand(
      child: Stack(
        children: thisLineNotes.map((note) {
          int index = currentNotes.indexOf(note);
          double offset = (3 - index) * tileHeight;

          return Transform.translate(
            offset: Offset(0, offset),
            child: Tile(
              height: tileHeight,
              state: note.state,
            ),
          );
        }).toList(),
      ),
    );
  }
}
