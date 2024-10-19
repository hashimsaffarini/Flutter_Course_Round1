import 'package:basic_notes_app/logic/note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFloatActionButton extends StatefulWidget {
  const CustomFloatActionButton({
    super.key,
  });

  @override
  State<CustomFloatActionButton> createState() =>
      _CustomFloatActionButtonState();
}

class _CustomFloatActionButtonState extends State<CustomFloatActionButton> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Add Note'),
                content: Form(
                  autovalidateMode: autovalidateMode,
                  key: context.read<NoteCubit>().formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: context.read<NoteCubit>().textController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your note',
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (context
                          .read<NoteCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        Navigator.of(context).pop();
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            });
      },
      child: const Icon(Icons.add),
    );
  }
}
