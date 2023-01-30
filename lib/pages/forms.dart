import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/models/vulnerableT.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';

class FormsPage extends StatelessWidget 
{
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), fixedSize: Size(240, 80));
  final HazardT blank = new HazardT(name: 'name', headers: '', origin: '', force: '', warning: '', forewarning: '', speed: '', freq: '', period: '', duration: '', desc: '', affectMe: '', affectCommunity: '');
  final TextStyle text_style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Forms'),
      ),
      body: Center
      (
        child: Column
        (
          children: <Widget>
          [
            Container
            (
              child: Text
              (
                "Select a type of form",
                style: text_style,
              ),
              
            ),
            Container
            (
              child: Divider(),
            ),

            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Hazard Assessment Form",),
                style: style,
                onPressed:()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HazardDetailPage(hazardT: blank)));
                },
              ),
            ),
            Container
            (
              child: Divider(),
            ),
            
            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Vulnerability Assessment Form",),
                style: style,
                onPressed:()
                {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); go to vulnerability details page
                },
              ),
            ),
            Container
            (
              child: Divider(),
            ),

            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Click here to fill out a capacity form",),
                style: style,
                onPressed:()
                {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); go to vulnerability details page
                },
              ),
            ),

            Container
            (
              child: Divider(),
            ),

            Container
            (
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton
              (
                child: Text("Disaster Risk Analysis Form"),
                style: style,
                onPressed:()
                {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormsPage())); go to vulnerability details page
                },
              ),
            ),
            Container
            (
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
