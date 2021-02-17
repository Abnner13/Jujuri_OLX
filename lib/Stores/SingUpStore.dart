import 'package:jujuri_mobx/Models/UserModel.dart';
import 'package:jujuri_mobx/Repositories/UserRepository.dart';
import 'package:jujuri_mobx/helpers/extensions.dart';
import 'package:mobx/mobx.dart';
part 'SingUpStore.g.dart';

class SingUpStore = _SingUpStore with _$SingUpStore;

abstract class _SingUpStore with Store {
  @observable
  String name;

  @action
  void setName(String value) => name = value;

  @computed
  bool get nameValid => name != null && name.length > 6;
  String get nameError {
    if (name == null || nameValid)
      return null;
    else if (name.isEmpty)
      return 'Campo Obrigatorio!';
    else
      return 'Nome Muito curto';
  }

  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();
  String get emailError {
    if (email == null || emailValid)
      return null;
    else if (email.isEmpty)
      return 'Campo Obrigatorio!';
    else
      return 'E-mail inválido';
  }

  @observable
  String phone;
  @action
  void setPhone(String value) => phone = value;

  @computed
  bool get phoneValid => phone != null && phone.length >= 14;
  String get phoneError {
    if (phone == null || phoneValid)
      return null;
    else if (phone.isEmpty)
      return 'Campo Obrigatorio!';
    else
      return 'Telefone inválido';
  }

  @observable
  String pass1;
  @action
  void setpass1(String value) => pass1 = value;

  @computed
  bool get pass1Valid => pass1 != null && pass1.length >= 6;
  String get pass1Error {
    if (pass1 == null || pass1Valid)
      return null;
    else if (pass1.isEmpty)
      return 'Campo Obrigatorio!';
    else
      return 'Senha inválida';
  }

  @observable
  String pass2;
  @action
  void setpass2(String value) => pass2 = value;

  @computed
  bool get pass2Valid => pass2 != null && pass2 == pass1;
  String get pass2Error {
    if (pass2 == null || pass2Valid)
      return null;
    else if (pass2.isEmpty)
      return 'Campo Obrigatorio!';
    else
      return 'Senhs não coincidem';
  }

  @computed
  bool get isFormValid =>
      nameValid && emailValid && phoneValid && pass1Valid && pass2Valid;

  @observable
  bool loading = false;

  @observable
  String error;

  @computed
  Function get singUpPressed => (isFormValid && !loading) ? _singUp : null;

  @action
  Future<void> _singUp() async {
    loading = true;

    final user = UserModel(
      name: name,
      email: email,
      phone: phone,
      password: pass1,
    );

    try {
      final resultUser = await UserRepository().signUp(user);
      print(resultUser);
    } catch (e) {
      error = e;
    }
    loading = false;
  }
}
