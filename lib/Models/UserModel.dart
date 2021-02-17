enum UserType { PARTICULAR, PROFESSIONAL }

class UserModel {
  UserModel(
      {this.name,
      this.email,
      this.phone,
      this.password,
      this.type = UserType.PARTICULAR});

  String name;
  String email;
  String phone;
  String password;
  UserType type;
}
