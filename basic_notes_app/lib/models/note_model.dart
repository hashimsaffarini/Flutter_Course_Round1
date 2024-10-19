class NoteModel {
  final String id;
  final String content;

  NoteModel({required this.id, required this.content});

  String generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}
