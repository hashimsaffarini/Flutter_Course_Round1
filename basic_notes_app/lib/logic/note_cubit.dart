import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  final TextEditingController textController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
