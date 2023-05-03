import 'package:flutter/material.dart';
import 'package:makepdfs/pages/forms.dart';
import 'package:makepdfs/pages/location_date.dart';
import 'package:makepdfs/pages/start.dart';
import 'package:makepdfs/services/auth.dart';


      //page for navigating to the various landing pages
class HomePage extends StatelessWidget
{
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 36));
  //final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Communtiy Assessment Tool'),
      ),
      body: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Padding(padding: EdgeInsets.all(26.0)),
            SizedBox(
              width: 340,
              height: 170,
              child: Container
              (
                margin: EdgeInsets.only(left: 20),
                child: ElevatedButton.icon(
                  label: Text("Create New Forms"),
                  icon: Icon(
                    Icons.assignment,
                    size: 60
                  ),
                  style: style,
                  onPressed:()
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationDatePage()));
                  },
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5.0)),

            SizedBox(
              width: 340,
              height: 170,
              
              child: Container
              (
                margin: EdgeInsets.only(left: 20),
                child: ElevatedButton.icon(
                  icon: Icon(
                      Icons.add_chart,
                      size: 60
                  ),
                  label: Text("Edit Forms"),
                  style: style,
                  onPressed:()
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationDatePage()));
                  },
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5.0)),

            SizedBox(  
              width: 340,
              height: 170,
              child: Container
              (
                margin: EdgeInsets.only(left: 20),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.search,
                    size: 60
                  ),
                  label: Text("Retrieve Forms"),
                  style: style,
                  onPressed:()
                  {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); SEND TO PHOTOS PAGE
                  },
                ),
              ),
            ),
          ],
        )
    );
  } 
}