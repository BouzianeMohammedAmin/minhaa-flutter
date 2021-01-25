import 'package:minhaa/application/classes/errors/form_error.dart';

class SignUpFurmModel {
  static bool emailHassEerror = false;
  String email;
  String password;
  String confirmPassword;
  String firstName;
  String lasttName;

//*****************FirstName */
  void setFirstName(String firstName) {
    //validation
    if (!this.validateName(firstName)) {
      throw FormError(
          "Your First Name is Invalide !! ${this.validateName(firstName)} ");
    }
    this.firstName = firstName;
  }

//*****************Last Name */

  void setLastName(String lastName) {
    //validation
    if (!this.validateName(lastName)) {
      throw FormError("Your Last Name is Invalide !! ");
    }

    this.lasttName = lastName;
  }

  bool validateName(String name) {
    return !RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]').hasMatch(name);
  }

//***********Email  */
  void setEmail(String email) {
    // check the email validation

    if (!validateEmail(email)) {
      throw FormError("Invalide email");
    }

    this.email = email;
  }

  bool validateEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
        .hasMatch(email);
  }

//**********Password *****/
  void setPassword(String password) {
    if (password.length < 6) {
      throw FormError("Length of password shold be  more then 6");
    }
    this.password = password;
  }

  //confirmPassword
  void setConfirmPassword(String password) {
    if (password != this.password) {
      throw FormError("Invalide Password");
    }
    this.password = password;
  }

  bool valideData() {
    return (this.email != null &&
        this.password != null &&
        this.confirmPassword != null &&
        this.confirmPassword == this.password &&
        this.firstName != null &&
        this.lasttName != null &&
        this.email.length > 6 &&
        this.validateEmail(this.email) &&
        this.validateName(this.firstName) &&
        this.validateName(this.lasttName));
  }
}
