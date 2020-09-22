import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'menu.dart';


class Brouillon extends StatefulWidget {
  @override
  _BrouillonState createState() => _BrouillonState();
}

class _BrouillonState extends State<Brouillon> {
  String _userName;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 70),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(179, 28, 138, 1),
                                Color.fromRGBO(42, 28, 105, 1),
                              ]),
                        ),
                        child: Text(
                          "Be",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "Connected",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromRGBO(42, 28, 105, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome Back !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 57,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.05),
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "please tape your username";
                      }
                    },
                    onSaved: (input) => _userName = input,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        border: InputBorder.none,
                        hintText: "UserName",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 57,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.05),
                  ),
                  child: TextFormField(
                    validator: (input) {
                      if (input.length < 6) {
                        return "Your password needs to be atleast 6 characters";
                      }
                    },
                    onSaved: (input) => _password = input,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Remember password and auto login",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FlatButton(
                  onPressed: signIn,
                  child: Container(
                    alignment: Alignment.center,
                    height: 57,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(179, 28, 138, 1),
                            Color.fromRGBO(42, 28, 105, 1),
                          ]),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Forgot your password ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(42, 28, 105, 1),
                      fontSize: 13),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 57,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(42, 28, 105, 1))),
                  child: Text(
                    'SIGN HUP HERE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(42, 28, 105, 1),
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _userName, password: _password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Menu(user: user)));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
