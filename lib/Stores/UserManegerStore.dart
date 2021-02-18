import 'package:jujuri_mobx/Models/UserModel.dart';
import 'package:mobx/mobx.dart';
part 'UserManegerStore.g.dart';

class UserManegerStore = _UserManegerStore with _$UserManegerStore;

abstract class _UserManegerStore with Store {
  @observable
  UserModel user;
  @action
  setuser(UserModel value) => user = value;

  @computed
  bool get isLoggedIn => user != null;
}
