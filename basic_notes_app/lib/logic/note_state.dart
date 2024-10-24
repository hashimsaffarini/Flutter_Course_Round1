part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteSuccess extends NoteState {}

final class NoteFailure extends NoteState {}

final class GetNotesLoading extends NoteState {}

final class GetNotesSuccess extends NoteState {
  final List<NoteModel> notes;

  GetNotesSuccess({required this.notes});
}

final class GetNotesFailure extends NoteState {}
