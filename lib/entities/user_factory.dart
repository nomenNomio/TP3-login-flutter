import 'package:flutter_application_2/entities/user.dart';

class UserFactory {
  final users = <User>[];

  UserFactory() {
    users.addAll({
      User(email: "pepe@gmail.com", password: "1234", name: "Jose"),
      User(email: "marta@gmail.com", password: "567", name: "Marta"),
      User(email: "test1@gmail.com", password: "8910", name: "Roberto"),
    });
  }

  User _getUser(String? email, String? password) {
    return users.singleWhere((user) => user.login(email, password));
  }

  String getUsername(String? email, String? password) {
    return _getUser(email, password).getName();
  }
}
