part of 'note_cubit.dart';

sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteSuccess extends NoteState {
  NoteSuccess();
}

final class NoteError extends NoteState {
  final String message;

  NoteError(this.message);
}

final class NoteFetchLoading extends NoteState {}

final class NoteFetchSuccess extends NoteState {
  final List<NoteModel> notes;

  NoteFetchSuccess(this.notes);
}

final class NoteFetchError extends NoteState {
  final String message;

  NoteFetchError(this.message);
}
