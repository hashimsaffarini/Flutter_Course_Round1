import 'package:basic_notes_app/logic/note_cubit.dart';
import 'package:basic_notes_app/utils/helpers.dart';

void listenerFunction(context, state) {
  if (state is AddNoteSuccess) {
    buildListener(context, 'Note added successfully');
    // context.read<NoteCubit>().getNotes();
  } else if (state is AddNoteFailure) {
    buildListener(context, 'Failed to add note');
  } else if (state is DeleteNoteSuccess) {
    buildListener(context, 'Note deleted successfully');
    // context.read<NoteCubit>().getNotes();
  }
}
