class NoteModel {
  final String id;
  final String content;

  NoteModel({required this.id, required this.content});

  static String generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> data) {
    return NoteModel(
      id: data['id'],
      content: data['content'],
    );
  }
}
