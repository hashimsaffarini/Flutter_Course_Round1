class SignupModel {
  final String email;
  final String name;
  final String uid;

  SignupModel({
    required this.email,
    required this.name,
    required this.uid,
  });
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'uid': uid,
    };
  }
}
