import 'package:basic_notes_app/models/note_model.dart';

abstract class HomeServices {
  Future<List<NoteModel>> getNotes();
  Future<void> addNote();
  Future<void> deleteNote();
}

class HomeServicesImpl implements HomeServices {
  @override
  Future<void> addNote() {
    // TODO: implement addNote
    throw UnimplementedError();
  }

  @override
  Future<void> deleteNote() {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<List<NoteModel>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }
}
