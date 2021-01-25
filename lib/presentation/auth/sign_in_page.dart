import 'package:flutter/material.dart';
import 'package:minhaa/application/models/sign_in_furm_model.dart';
import 'package:minhaa/router/route-constants.dart';
import 'package:minhaa/values/branding_color.dart';
import 'package:minhaa/values/images.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignInPpage extends StatefulWidget {
  SignInPpage({Key key}) : super(key: key);

  @override
  _SignInPpageState createState() => _SignInPpageState();
}

class _SignInPpageState extends State<SignInPpage> {
  _buildSizeBox(double h) {
    return SizedBox(
      height: h,
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Injector(
        inject: [
          Inject<SignInFurmModel>(
            () => SignInFurmModel(),
            joinSingleton: JoinSingleton.withCombinedReactiveInstances,
          )
        ],
        builder: (context) {
          final _singletonSignInFurmModel =
              Injector.getAsReactive<SignInFurmModel>();
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildSizeBox(70),
                Container(
                  height: 250,
                  child: Center(
                    child: Image.asset(Images.logo),
                  ),
                ),
                _buildSizeBox(50),
                StateBuilder<SignInFurmModel>(
                  builder: (context, signInFurmModel) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        onChanged: (String email) {
                          signInFurmModel.setState(
                            (state) => state.setEmail(email),
                            catchError: true,
                          );
                        },
                        decoration: InputDecoration(
                          errorText: signInFurmModel.hasError
                              ? signInFurmModel.error.message
                              : null,
                          //border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            size: 30,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                _buildSizeBox(20),
                StateBuilder<SignInFurmModel>(
                  builder: (context, signInFurmModel) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        onChanged: (ps) {
                          signInFurmModel.setState((s) => s.setPassword(ps),
                              catchError: true);
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          errorText: signInFurmModel.hasError
                              ? signInFurmModel.error.message
                              : null,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 30,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                _buildSizeBox(20),
                StateBuilder(
                  models: [_singletonSignInFurmModel],
                  builder: (context, model) {
                    return GestureDetector(
                      onTap: () {
                        if (!_singletonSignInFurmModel.state.valideData()) {
                          _key.currentState.showSnackBar(SnackBar(
                            content: Text('Your inputs  is invalide  '),
                            backgroundColor: Colors.red,
                          ));
                        }
                      },
                      child: Container(
                        height: 60.0,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(30.0),
                          // shadowColor: brandingPrimaryColor,
                          color: brandingPrimaryColor,
                          //elevation: 7.0,
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                _buildSizeBox(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, signUpRoute);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: brandingPrimaryColor,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
