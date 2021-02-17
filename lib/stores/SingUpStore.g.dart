// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingUpStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SingUpStore on _SingUpStore, Store {
  Computed<bool> _$nameValidComputed;

  @override
  bool get nameValid => (_$nameValidComputed ??=
          Computed<bool>(() => super.nameValid, name: '_SingUpStore.nameValid'))
      .value;
  Computed<bool> _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SingUpStore.emailValid'))
          .value;
  Computed<bool> _$phoneValidComputed;

  @override
  bool get phoneValid =>
      (_$phoneValidComputed ??= Computed<bool>(() => super.phoneValid,
              name: '_SingUpStore.phoneValid'))
          .value;
  Computed<bool> _$pass1ValidComputed;

  @override
  bool get pass1Valid =>
      (_$pass1ValidComputed ??= Computed<bool>(() => super.pass1Valid,
              name: '_SingUpStore.pass1Valid'))
          .value;
  Computed<bool> _$pass2ValidComputed;

  @override
  bool get pass2Valid =>
      (_$pass2ValidComputed ??= Computed<bool>(() => super.pass2Valid,
              name: '_SingUpStore.pass2Valid'))
          .value;

  final _$nameAtom = Atom(name: '_SingUpStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_SingUpStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$phoneAtom = Atom(name: '_SingUpStore.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$pass1Atom = Atom(name: '_SingUpStore.pass1');

  @override
  String get pass1 {
    _$pass1Atom.reportRead();
    return super.pass1;
  }

  @override
  set pass1(String value) {
    _$pass1Atom.reportWrite(value, super.pass1, () {
      super.pass1 = value;
    });
  }

  final _$pass2Atom = Atom(name: '_SingUpStore.pass2');

  @override
  String get pass2 {
    _$pass2Atom.reportRead();
    return super.pass2;
  }

  @override
  set pass2(String value) {
    _$pass2Atom.reportWrite(value, super.pass2, () {
      super.pass2 = value;
    });
  }

  final _$_SingUpStoreActionController = ActionController(name: '_SingUpStore');

  @override
  void setName(String value) {
    final _$actionInfo = _$_SingUpStoreActionController.startAction(
        name: '_SingUpStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SingUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SingUpStoreActionController.startAction(
        name: '_SingUpStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SingUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_SingUpStoreActionController.startAction(
        name: '_SingUpStore.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_SingUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setpass1(String value) {
    final _$actionInfo = _$_SingUpStoreActionController.startAction(
        name: '_SingUpStore.setpass1');
    try {
      return super.setpass1(value);
    } finally {
      _$_SingUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setpass2(String value) {
    final _$actionInfo = _$_SingUpStoreActionController.startAction(
        name: '_SingUpStore.setpass2');
    try {
      return super.setpass2(value);
    } finally {
      _$_SingUpStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
phone: ${phone},
pass1: ${pass1},
pass2: ${pass2},
nameValid: ${nameValid},
emailValid: ${emailValid},
phoneValid: ${phoneValid},
pass1Valid: ${pass1Valid},
pass2Valid: ${pass2Valid}
    ''';
  }
}
