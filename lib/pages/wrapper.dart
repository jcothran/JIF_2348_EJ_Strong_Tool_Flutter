import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:makepdfs/pages/home.dart';
import 'package:makepdfs/pages/start.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //returns either the start or home page widget depending on if the user has been authenticated
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if(snapshot.hasData) {
          print("user authenticated");
          return HomePage();
        }
        else {
          return StartPage();
        }
      },
    );
  }
}
