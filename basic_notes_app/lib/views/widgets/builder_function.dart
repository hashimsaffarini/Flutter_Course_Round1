import 'package:basic_notes_app/logic/note_cubit.dart';
import 'package:basic_notes_app/views/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';

Widget builderFunction(context, state) {
  if (state is GetNotesSuccess) {
    final notes = state.notes;
    return NotesListView(notes: notes);
  } else if (state is GetNotesLoading ||
      state is AddNoteLoading ||
      state is DeleteNoteLoading) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.blue,
      ),
    );
  } else {
    return const Center(
      child: Text('No notes found'),
    );
  }
}
