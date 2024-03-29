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
        title: Text('Community Assessment Tool'),
      ),
      body: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Center(
              child: Container
              (
                height:MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton.icon(
                  label: Text("Create Forms"),
                  icon: Icon(
                    Icons.assignment,
                    size: 60
                  ),
                  style: style,
                  onPressed:()
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationDatePage.file_mode(false, false)));
                  },
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5.0)),

            Center(
              child: Container
              (
                height:MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton.icon(
                  icon: Icon(
                      Icons.add_chart,
                      size: 60
                  ),
                  label: Text("Edit Forms"),
                  style: style,
                  onPressed:()
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationDatePage.file_mode(true, false)));
                  },
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(5.0)),

            Center(
              child: Container
              (
                height:MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.search,
                    size: 60
                  ),
                  label: Text("View PDFS"),
                  style: style,
                  onPressed:()
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationDatePage.file_mode(false, true)));
                  },
                ),
              ),
            ),
          ],
        )
    );
  } 
}