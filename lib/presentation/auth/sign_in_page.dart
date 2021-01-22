import 'package:flutter/material.dart';
import 'package:minhaa/values/images.dart';

class SignInPpage extends StatefulWidget {
  SignInPpage({Key key}) : super(key: key);

  @override
  _SignInPpageState createState() => _SignInPpageState();
}

_buildSizeBox(double h) {
  return SizedBox(
    height: h,
  );
}

class _SignInPpageState extends State<SignInPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light, //show bare of batry ... ect
        automaticallyImplyLeading: false, //create back buuton false
      ),*/
      body: SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
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
            ),
            _buildSizeBox(20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
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
            ),
            _buildSizeBox(20),
            Container(
              height: 60.0,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                // shadowColor: Theme.of(context).primaryColor,
                color: Theme.of(context).primaryColor,
                //elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
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
                    onTap: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
