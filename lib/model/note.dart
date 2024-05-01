import 'package:piano_tiles/model/note_state_enum.dart';

class Note {
  final int line;

  NoteStateEnum state = NoteStateEnum.ready;

  Note(this.line);
}
