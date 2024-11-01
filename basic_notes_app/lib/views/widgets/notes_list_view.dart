import 'package:basic_notes_app/models/note_model.dart';
import 'package:basic_notes_app/views/widgets/note_list_view_item.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
    required this.notes,
  });

  final List<NoteModel> notes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteListViewItem(note: note);
      },
    );
  }
}
