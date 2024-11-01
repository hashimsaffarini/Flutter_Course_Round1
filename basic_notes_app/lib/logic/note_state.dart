part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class AddNoteLoading extends NoteState {}

final class AddNoteSuccess extends NoteState {}

final class AddNoteFailure extends NoteState {}

final class GetNotesLoading extends NoteState {}

final class GetNotesSuccess extends NoteState {
  final List<NoteModel> notes;

  GetNotesSuccess({required this.notes});
}

final class GetNotesFailure extends NoteState {}

final class DeleteNoteLoading extends NoteState {}

final class DeleteNoteSuccess extends NoteState {}

final class DeleteNoteFailure extends NoteState {}
