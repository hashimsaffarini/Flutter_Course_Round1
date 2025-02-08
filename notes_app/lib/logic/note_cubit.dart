import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  TextEditingController noteController = TextEditingController();
  String noteType = 'Select Note Category';

  void addNote() async {
    emit(NoteLoading());

    NoteModel note = NoteModel(
      noteType: noteType,
      content: noteController.text,
      date: DateTime.now().toString(),
    );
    try {
      var notesBox = Hive.box<NoteModel>('notes');
      notesBox.add(note);
      emit(NoteSuccess());
    } catch (e) {
      emit(NoteError(e.toString()));
    }
  }

  void fetchNotes() {
    emit(NoteFetchLoading());
    try {
      var notesBox = Hive.box<NoteModel>('notes');
      List<NoteModel> notes = [];

      for (var i = 0; i < notesBox.length; i++) {
        notes.add(notesBox.getAt(i)!);
      }
      emit(NoteFetchSuccess(notes));
    } catch (e) {
      emit(NoteFetchError(e.toString()));
    }
  }
}
