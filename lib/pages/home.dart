import 'package:flutter/material.dart';
import 'package:makepdfs/pages/forms.dart';
import 'package:makepdfs/pages/start.dart';
import 'package:makepdfs/services/auth.dart';


      //page for navigating to the various landing pages
class HomePage extends StatelessWidget
{
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), fixedSize: Size(240, 80));
  final ButtonStyle style2 = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15), fixedSize: Size(150, 50));
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Communtiy Assessment Tool'),
      ),
      body: Center
      (
        child: Column 
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Forms"),
                style: style,
                onPressed:()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage()));
                },
              ),
            ),

            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Photos"),
                style: style,
                onPressed:()
                {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); SEND TO PHOTOS PAGE
                },
              ),
            ),

            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Analytics"),
                style: style,
                onPressed:()
                {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); SEND TO ANALYTICS PAGE
                },
              ),
            ),


            Padding(
              padding: EdgeInsets.all(30.0),
            ),

            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
                (
                child: Text("Sign Out"),
                style: style2,
                onPressed:() async {
                  await _auth.signOut();
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                  );
                },
              ),
            )
          ],
        )
      )
    );
  } 
}