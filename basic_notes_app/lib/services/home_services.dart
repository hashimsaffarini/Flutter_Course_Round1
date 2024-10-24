import 'package:basic_notes_app/models/note_model.dart';
import 'package:basic_notes_app/services/custom_firestore_services.dart';
import 'package:basic_notes_app/utils/firestore_paths.dart';

abstract class HomeServices {
  Future<List<NoteModel>> getNotes();
  Future<void> addNote({required NoteModel note});
  Future<void> deleteNote({required String id});
}

class HomeServicesImpl implements HomeServices {
  final CustomFirestoreServices firestoreServices = CustomFirestoreServices();

  // HomeServicesImpl({required this.firestoreServices}); // dependency injection

  @override
  Future<void> addNote({required NoteModel note}) async {
    await firestoreServices.addNote(
      path: FirestorePaths.addNote(note.id),
      data: note.toMap(),
    );
  }

  @override
  Future<void> deleteNote({required String id}) async {
    await firestoreServices.deleteNote(
      path: FirestorePaths.deleteNote(id),
    );
  }

  @override
  Future<List<NoteModel>> getNotes() async {
    final notes = await firestoreServices.getNotes(
      path: FirestorePaths.getNotes(),
    );
    return notes.map((e) => NoteModel.fromMap(e)).toList();
  }
}
