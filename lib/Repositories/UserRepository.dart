import 'package:jujuri_mobx/Models/UserModel.dart';
import 'package:jujuri_mobx/Repositories/TableKeys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserRepository {
  Future<void> signUp(UserModel user) async {
    final parseUser = ParseUser(user.email, user.password, user.email);

    parseUser.set<String>(keyUserName, user.name);
    parseUser.set<String>(keyUserPhone, user.phone);
    parseUser.set(keyUserType, user.type.index);

    await parseUser.signUp();
  }
}
