import 'package:jujuri_mobx/Models/UserModel.dart';
import 'package:jujuri_mobx/Repositories/ParseErrors.dart';
import 'package:jujuri_mobx/Repositories/TableKeys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserRepository {
  Future<UserModel> signUp(UserModel user) async {
    final parseUser = ParseUser(user.email, user.password, user.email);

    parseUser.set<String>(keyUserName, user.name);
    parseUser.set<String>(keyUserPhone, user.phone);
    parseUser.set(keyUserType, user.type.index);

    final response = await parseUser.signUp();

    if (response.success) {
      return mapParseToUserModel(response.result);
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

  UserModel mapParseToUserModel(ParseUser parseUser) {
    return UserModel(
      id: parseUser.objectId,
      name: parseUser.get(keyUserName),
      email: parseUser.get(keyUserEmail),
      phone: parseUser.get(keyUserPhone),
      type: UserType.values[parseUser.get(keyUserType)],
      createdAt: parseUser.get(keyUserCreatedAt),
    );
  }
}
