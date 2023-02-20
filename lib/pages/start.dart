import 'package:flutter/material.dart';
import 'package:makepdfs/pages/home.dart';
import 'package:makepdfs/services/auth.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  final AuthService _auth = AuthService();

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 35), fixedSize: Size(200, 80));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Sign in'),
      ),
      body: ListView(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/dhec.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 110),
            child:
            ElevatedButton(
                child: Text('Start'),
                style: style,
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                  dynamic result =  await _auth.signInAnon();
                  if (result == null) {
                    print('error with authentication');
                  } else {
                    //for testing
                    print(result);
                  }
                }
              ),
            )
          ],
    ),
    );
  }
}

