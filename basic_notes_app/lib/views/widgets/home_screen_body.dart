import 'package:basic_notes_app/logic/note_cubit.dart';
import 'package:basic_notes_app/views/widgets/builder_function.dart';
import 'package:basic_notes_app/views/widgets/listener_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocConsumer<NoteCubit, NoteState>(
      listener: listenerFunction,
      builder: builderFunction,
    );
  }
}
