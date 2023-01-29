import 'package:flutter/material.dart';
import 'package:makepdfs/pages/hazardTs.dart';

class HomePage extends StatelessWidget
{
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), fixedSize: Size(240, 80));

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Communtiy Assestment Tool'),
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

            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Learn"),
                style: style,
                onPressed:()
                {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); SEND TO EDUCATION PAGE
                },
              ),
            )
          ],
        )
      )
    );
  } 
}