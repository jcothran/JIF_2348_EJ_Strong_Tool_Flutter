import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:makepdfs/services/auth.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/models/vulnerableT.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/location_date.dart';
import 'package:makepdfs/pages/vulnerability_detail.dart';
import 'package:makepdfs/pages/capacity_detail.dart';
import 'package:makepdfs/pages/disaster_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_disaster.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_vulnerable.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_capacity.dart';

//page for navigating to the various form pages

class EditFormsPage extends StatelessWidget {
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), fixedSize: Size(240, 80));
  final TextStyle text_style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  String locString = LocationDatePage().getLocationString();
  String loc = LocationDatePage().getLocation();
  String date = LocationDatePage().getDate();
  String location_date = LocationDatePage().getLocation() + " " + LocationDatePage().getDate() + " ";
  String page_title = 'Edit Forms';

  final bool view_pdf;
  EditFormsPage(this.view_pdf);

  @override
  Widget build(BuildContext context) {
    if (view_pdf)
      page_title = "View PDFS";
    return Scaffold(
      appBar: AppBar(
        title: Text(page_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Container
              (
              child: Text
                (
                locString + '\n' + date,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationDatePage())
                );
              },
              icon: Icon(
                Icons.add_location_alt,
                size: 40.0,
              ),
            ),
            Container
              (
              child: Text
                (
                "Update Loc/Date",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Container
              (
              child: Text
                (
                "Select a type of form",
                style: text_style,
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: Text(
                  "Hazard Assessment Form",
                ),
                style: style,
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  String uid = AuthService().getUserId().toString();
                  DocumentReference data = db.collection("hazard_form").doc(location_date + uid);
                  await data.get().then(
                        (dataSnapshot) => {
                      if (dataSnapshot.exists) {
                        if (view_pdf)
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PdfPreviewPage(hazardT: HazardT.convertHazardDocument(dataSnapshot))))
                        else
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HazardDetailPage(hazardT: HazardT.convertHazardDocument(dataSnapshot), edit_file: true,)))
                      }
                      else {
                        _showMyDialog(context)
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                },
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: Text(
                  "Vulnerability Assessment Form",
                ),
                style: style,
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  String uid = AuthService().getUserId().toString();
                  DocumentReference data = db.collection("vulnerability_form").doc(location_date + uid);
                  await data.get().then(
                        (dataSnapshot) => {
                      if (dataSnapshot.exists) {
                        if (view_pdf)
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PdfPreviewVulnerablePage(vulnerableT: VulnerableT.convertVulnerabilityDocument(dataSnapshot))))
                        else
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VulnerabilityDetailPage(vulnerableT: VulnerableT.convertVulnerabilityDocument(dataSnapshot))))
                      }
                      else {
                        _showMyDialog(context)
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                  
                },
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: Text(
                  "Capacity Assessment Form",
                ),
                style: style,
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  String uid = AuthService().getUserId().toString();
                  DocumentReference data = db.collection("capacity_form").doc(location_date + uid);
                  await data.get().then(
                        (dataSnapshot) => {
                      if (dataSnapshot.exists) {
                        if (view_pdf)
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>PdfPreviewCapacityPage(capacityT: CapacityT.convertCapacityDocument(dataSnapshot))))
                        else
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CapacityDetailPage(capacityT: CapacityT.convertCapacityDocument(dataSnapshot), edit_file: true,)))    
                      }
                      else {
                        _showMyDialog(context)
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                },
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(
                child: Text("Disaster Risk Analysis Form"),
                style: style,
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  String uid = AuthService().getUserId().toString();
                  DocumentReference data = db.collection("disaster_form").doc(location_date + uid);
                  await data.get().then(
                        (dataSnapshot) => {
                      if (dataSnapshot.exists) {
                        if (view_pdf)
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PdfPreviewDisasterPage(disasterT: DisasterT.convertDisasterDocument(dataSnapshot))))
                        else
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DisasterDetailPage(disasterT: DisasterT.convertDisasterDocument(dataSnapshot))))
                      }
                      else {
                        _showMyDialog(context)
                      }                      
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                },
              ),
            ),
            Container(
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext form_context) async {
  return showDialog<void>(
    context: form_context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('You do not have an existing form for this date and location\n'),
              Text('Make sure you have selected the appropriate date and time for your edit'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Exit'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}