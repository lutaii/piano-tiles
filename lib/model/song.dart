// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:piano_tiles/model/note.dart';

class Song {
  List<Note> get notes {
    Random random = Random();

    return List.generate(39, (index) => Note(random.nextInt(4)));
  }
}
