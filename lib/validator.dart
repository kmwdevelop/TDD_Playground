class Validator {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Required Field";
    }

    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    if (!RegExp(pattern).hasMatch(email)) {
      return "Please enter a vaild email id";
    }

    return "Success";
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Required Field";
    }

    // 최소 8자, 문자 >= 1, 숫자 >= 1, 특수문자 >= 1:
    String pattern = r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";

    if (!RegExp(pattern).hasMatch(password)) {
      return "Please enter a valid password";
    }

    return "Success";

  }
}