class SignUpFurmModel {
  static bool emailHassEerror = false;
  String email;
  String password;
  String fullname;

  void setEmail(String email) {
    // check the email validation
    if (!validateEmail(email)) {
      throw LoginError("Invalide email");
    }

    this.email = email;
  }

  void setFullName(String fn) {
    // validete
    if (!this.validateFullName(fn)) {
      throw LoginError("Invalide Full name");
    }

    this.fullname = fn;
  }

  bool valideData() {
    return (this.email != null &&
        this.password != null &&
        this.fullname != null &&
        this.email.length > 6 &&
        this.validateEmail(this.email) &&
        this.validateFullName(this.fullname));
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

  bool validateFullName(String fn) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+").hasMatch(fn);
  }
}

class LoginError extends Error {
  LoginError(this.message);
  final String message;
}
