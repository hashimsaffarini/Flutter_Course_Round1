import 'package:basic_notes_app/logic/note_cubit.dart';
import 'package:basic_notes_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteListViewItem extends StatelessWidget {
  const NoteListViewItem({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.content),
      trailing: IconButton(
        onPressed: () {
          context.read<NoteCubit>().deleteNote(id: note.id);
        },
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
