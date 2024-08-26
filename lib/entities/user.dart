class User {
  String email;
  String password;
  String name;

  User({
    required this.email,
    required this.password,
    required this.name,
  });

  bool login(String? email, String? password) {
    return this.email == email && this.password == password;
  }

  String getName() {
    return this.name;
  }
}
