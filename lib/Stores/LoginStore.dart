import 'package:mobx/mobx.dart';
import 'package:jujuri_mobx/helpers/extensions.dart';

part 'LoginStore.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email;
  @action
  setemail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();
  String get emailError =>
      email == null || emailValid ? null : 'E-mail inválido';

  @observable
  String password;
  @action
  setpassword(String value) => password = value;

  @computed
  bool get passwordValid => password != null && password.length >= 4;
  String get passwordError =>
      password == null || passwordValid ? null : 'Senha inválida';

  @computed
  Function get loginPressed =>
      passwordValid && emailValid && !loading ? _login : null;

  @observable
  bool loading = false;

  @action
  Future<void> _login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 3));

    loading = false;
  }
}
