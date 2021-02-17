extension StringExtension on String {
  bool isEmailValid() {
    final regex = RegExp("[A-Za-z0-9\\._-]+@[A-Za-z]+\\.[A-Za-z]+");
    return regex.hasMatch(this);
  }
}
