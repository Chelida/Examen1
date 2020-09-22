import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/connexion/loginPage2.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
 

  final GlobalKey<FormState> _formekey = GlobalKey<FormState>();
 String _email, _passWord;
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Form(
        key: _formekey,
        child: Column(
          children: [
            TextFormField(
              validator: (input) {
                if (input.isEmpty) {
                  return 'Entrez votre email svp';
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input.length < 6) {
                  return 'Ton mots de passe doit comporter au moins 6 caractere';
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            RaisedButton(child: Text('Sign in'), onPressed: signIn)
          ],
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formekey.currentState;
    if (formState.validate()) {
      formState.save();
      await Firebase.initializeApp();
      try {
          FirebaseUser user = (await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: _email, password: _passWord))
          .user;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage2()),
      );
      } catch (e) {
        print(e.message);
      }

    
    }
  }
}
