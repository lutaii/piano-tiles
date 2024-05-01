import 'package:flutter/material.dart';
import 'package:piano_tiles/model/song.dart';
import 'package:piano_tiles/widgets/line.dart';

class PianoScreen extends StatefulWidget {
  const PianoScreen({super.key});

  @override
  State<PianoScreen> createState() => _PianoScreenState();
}

class _PianoScreenState extends State<PianoScreen> {
  final song = Song();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Line(
                  lineNumber: 0,
                  currentNotes: song.notes.sublist(0, 4),
                ),
              ),
              const VerticalDivider(
                thickness: 1,
                color: Colors.black,
              ),
              Expanded(
                child: Line(
                  lineNumber: 1,
                  currentNotes: song.notes.sublist(0, 4),
                ),
              ),
              const VerticalDivider(
                thickness: 1,
                color: Colors.black,
              ),
              Expanded(
                child: Line(
                  lineNumber: 2,
                  currentNotes: song.notes.sublist(0, 4),
                ),
              ),
              const VerticalDivider(
                thickness: 1,
                color: Colors.black,
              ),
              Expanded(
                child: Line(
                  lineNumber: 3,
                  currentNotes: song.notes.sublist(0, 4),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
