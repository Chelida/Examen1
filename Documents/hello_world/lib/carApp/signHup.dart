import 'package:flutter/material.dart';

class SignHup extends StatefulWidget {
  @override
  _SignHupState createState() => _SignHupState();
}

class _SignHupState extends State<SignHup> {
  String _userName = "";
  String _password = "";
  String _email = "";

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Form(
            key: _keyForm,
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
                  height: 30,
                ),
                Text(
                  "Welcome",
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
                    onSaved: (string) {
                      _userName = string;
                    },
                    validator: (valid) => valid.trim().isEmpty
                        ? "veuillez renseigner ce champ"
                        : null,
                    onChanged: (valid) => _userName,
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
                    onSaved: (string) {
                      _email = string;
                    },
                    validator: (valid) => valid.trim().isEmpty
                        ? "veuillez renseigner ce champ"
                        : null,
                    onChanged: (valid) => _email,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        border: InputBorder.none,
                        hintText: "Email",
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
                    onSaved: (string) {
                      _userName = string;
                    },
                    validator: (valid) =>
                        valid.trim().length < 6 ? "password incorrect" : null,
                    onChanged: (valid) => _password,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        border: InputBorder.none,
                        hintText: "Password",
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
                    onSaved: (string) {
                      _userName = string;
                    },
                    validator: (valid) =>
                        valid.trim().length < 6 ? "password incorrect" : null,
                    onChanged: (valid) => _password,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: () {
                    if (_keyForm.currentState.validate()) {
                      _keyForm.currentState.save();
                      setState(() {
                        _userName = _userName;
                      });
                      Navigator.pushNamed(context, 'home');
                      // return Menu();
                    }
                  },
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
                      'Sign Hup',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'connecter vous avec ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(42, 28, 105, 1),
                          fontSize: 13),
                    ),
                    Text(
                      '  google',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(42, 28, 105, 1),
                          fontSize: 13),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'homC3');
                    // return Menu();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 57,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(42, 28, 105, 1))),
                    child: Text(
                      'login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(42, 28, 105, 1),
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
