import 'package:flutter/material.dart';
import 'package:piano_tiles/model/note_state_enum.dart';
import 'package:piano_tiles/utils/palette.dart';

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.state,
    required this.height,
  });

  final NoteStateEnum state;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ColoredBox(
        color: color,
      ),
    );
  }

  Color get color => switch (state) {
        NoteStateEnum.ready => Palette.enabledColor,
        NoteStateEnum.missed => Palette.errorColor,
        NoteStateEnum.tapped => Palette.defaultColor,
      };
}
