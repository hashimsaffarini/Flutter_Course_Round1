import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:notes_app/logic/note_cubit.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/utils/app_styles.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteCubit, NoteState>(
      listener: (context, state) {
        if (state is NoteSuccess) {
          Navigator.pop(context);
          context.read<NoteCubit>().fetchNotes();
        }
        if (state is NoteError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 160,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'What do you want to add?',
                  style: AppStyles.bold24.copyWith(
                    color: const Color(0xff181818),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Color(0xffE6E6E6),
                  thickness: 2,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: context.read<NoteCubit>().noteController,
                  title: "Add Your Note",
                  icon: const Icon(
                    Iconsax.note,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownButton(
                  hint: Text(context.read<NoteCubit>().noteType),
                  dropdownColor: const Color(0xffF0F0F0),
                  items: List.generate(categories.length, (index) {
                    return DropdownMenuItem(
                      value: categories[index],
                      child: Text(categories[index].name),
                    );
                  }),
                  onChanged: (value) {
                    setState(() {
                      context.read<NoteCubit>().noteType = value!.name;
                    });
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.read<NoteCubit>().addNote();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff181818),
                    minimumSize: const Size(double.infinity, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: state is NoteLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          'Add Note',
                          style: AppStyles.bold14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        );
      },
    );
  }
}
