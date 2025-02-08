import 'package:hive_flutter/hive_flutter.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String noteType;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;

  NoteModel({
    required this.noteType,
    required this.content,
    required this.date,
  });
}


/// Store for obj