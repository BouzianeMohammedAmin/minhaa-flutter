import 'package:minhaa/application/classes/errors/form_error.dart';
import 'package:minhaa/application/state/auth_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignInFurmModel {
  final AuthState _authState = Injector.get<AuthState>();

  static bool emailHassEerror = false;
  String email;
  String password;

  void setEmail(String email) {
    // check the email validation
    if (!validateEmail(email)) {
      throw FormError("Invalide email");
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
      throw FormError("Length of password shold be  more then 6");
    }
    this.password = password;
  }

  bool validateEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
        .hasMatch(email);
  }

  submitSigbIn() async {
    /*   Dio dio = new Dio();
    Response response = await dio.post("http://192.168.1.3:9090/api/auth/login",
        data: {"email": "abigale91@example.org", "password": "password"});
    print(response);*/
    print('----->');
    await this._authState.singIn(email: this.email, password: this.password);
  }
}
