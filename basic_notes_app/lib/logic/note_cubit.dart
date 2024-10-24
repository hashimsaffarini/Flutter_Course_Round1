import 'package:basic_notes_app/models/note_model.dart';
import 'package:basic_notes_app/services/home_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  final TextEditingController textController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final HomeServicesImpl homeServices = HomeServicesImpl();

  void addNote() async {
    try {
      emit(NoteLoading());
      final textContent = textController.text;
      await homeServices.addNote(
        note: NoteModel(
          id: NoteModel.generateId(),
          content: textContent,
        ),
      );
      textController.clear();
      emit(NoteSuccess());
    } catch (e) {
      emit(NoteFailure());
    }
  }

  void getNotes() async {
    try {
      emit(GetNotesLoading());
      final notes = await homeServices.getNotes();
      emit(GetNotesSuccess(notes: notes));
    } catch (e) {
      emit(GetNotesFailure());
    }
  }
}
