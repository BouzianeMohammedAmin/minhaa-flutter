class SignInFurmModel {
  static bool emailHassEerror = false;
  String email;
  String password;

  void setEmail(String email) {
    // check the email validation
    if (!validateEmail(email)) {
      throw LoginError("Invalide email");
    }

    this.email = email;
  }

  bool valideData() {
    return (this.email != null &&
        this.password != null &&
        this.email.length > 6 &&
        this.validateEmail(this.email));
  }

  void setPassword(String password) {
    if (password.length < 6) {
      throw LoginError("Length of password shold be  more then 6");
    }
    this.password = password;
  }

  bool validateEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
        .hasMatch(email);
  }
}

class LoginError extends Error {
  LoginError(this.message);
  final String message;
}
