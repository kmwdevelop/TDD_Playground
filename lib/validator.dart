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
}