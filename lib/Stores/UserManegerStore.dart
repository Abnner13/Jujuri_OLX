import 'package:jujuri_mobx/Models/UserModel.dart';
import 'package:jujuri_mobx/Repositories/UserRepository.dart';
import 'package:mobx/mobx.dart';
part 'UserManegerStore.g.dart';

class UserManegerStore = _UserManegerStore with _$UserManegerStore;

abstract class _UserManegerStore with Store {
  _UserManegerStore() {
    _getCurrentUser();
  }
  @observable
  UserModel user;
  @action
  setuser(UserModel value) => user = value;

  @computed
  bool get isLoggedIn => user != null;

  Future<void> _getCurrentUser() async {
    final user = await UserRepository().currentUser();

    setuser(user);
  }
}
