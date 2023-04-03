import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/models/vulnerableT.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/location_date.dart';
import 'package:makepdfs/pages/vulnerability_detail.dart';
import 'package:makepdfs/pages/capacity_detail.dart';
import 'package:makepdfs/pages/disaster_detail.dart';
import '../services/database.dart';

//page for navigating to the various form pages

class FormsPage extends StatelessWidget 
{
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), fixedSize: Size(240, 80));
  final HazardT blank = new HazardT(name: 'Hazard Assessment Form', headers: '', origin: '', force: '', warning: '', forewarning: '', speed: '', freq: '', period: '', duration: '', desc: '', affectMe: '', affectCommunity: '');
  final VulnerableT blankV = new VulnerableT(name: "Vulnerability Assessment Form", hazardProf: '', popHigh: '', popMed: '', popLow: '', elderHigh: '', elderMed: '', elderLow: '', childHigh: '', childMed: '', childLow: '', hsEdHigh: '', hsEdMed: '', hsEdLow: '', linIsoHigh: '', linIsoMed: '', linIsoLow: '', pocHigh: '', pocMed: '', pocLow: '', lincHigh: '', lincMed: '', lincLow: '', nheHigh: '', nheMed: '', nheLow: '', housingHigh: '', housingMed: '', housingLow: '', schoolsHigh: '', schoolsMed: '', schoolsLow: '', hospHigh: '', hospMed: '', hospLow: '', wasteHigh: '', wasteMed: '', wasteLow: '', elecHigh: '', elecMed: '', elecLow: '', waterHigh: '', waterMed: '', waterLow: '', wasteWaterHigh: '', wasteWaterMed: '', wasteWaterLow: '', essenHigh: '', essenMed: '', essenLow: '', summary: '');
  final CapacityT blankC = new CapacityT(name: "Capacity Assessment Form", prevExist: '', prevReq: '', prevGaps: '', mitiExist: '', mitiReq: '', mitiGaps: '', heExistHigh: '', heReqHigh: '', heGapsHigh: '', nonHeExistHigh: '', nonHeReqHigh: '', nonHeGapsHigh: '', heExistMed: '', heReqMed: '', heGapsMed: '', nonHeExistMed: '', nonHeReqMed: '', nonHeGapsMed: '', heExistLowBef: '', heReqLowBef: '', heGapsLowBef: '', nonHeExistLowBef: '', nonHeReqLowBef: '', nonHeGapsLowBef: '', heExistLowDur: '', heReqLowDur: '', heGapsLowDur: '', nonHeExistLowDur: '', nonHeReqLowDur: '', nonHeGapsLowDur: '', commReadyBefReq: '', commReadyBefGaps: '', commReadyDurReq: '', commReadyDurGaps: '');
  final DisasterT blankD = new DisasterT(name: "Disaster Assessment Form", communityProf: '', hazardProf: '', elderHigh: '', elderMed: '', elderLow: '', elderIndv: '', childHigh: '', childMed: '', childLow: '', childIndv: '', hsEdHigh: '', hsEdMed: '', hsEdLow: '', hsEdIndv: '', linIsoHigh: '', linIsoMed: '', linIsoLow: '', linIsoIndv: '', pocHigh: '', pocMed: '', pocLow: '', pocIndv: '', lincHigh: '', lincMed: '', lincLow: '', lincIndv: '', nheHigh: '', nheMed: '', nheLow: '', nheIndv: '', housingHigh: '', housingMed: '', housingLow: '', housingIndv: '', schoolsHigh: '', schoolsMed: '', schoolsLow: '', schoolsIndv: '', hospHigh: '', hospMed: '', hospLow: '', hospIndv: '', wasteHigh: '', wasteMed: '', wasteLow: '', wasteIndv: '', elecHigh: '', elecMed: '', elecLow: '', elecIndv: '', waterHigh: '', waterMed: '', waterLow: '', waterIndv: '', wasteWaterHigh: '', wasteWaterMed: '', wasteWaterLow: '', wasteWaterIndv: '', essenHigh: '', essenMed: '', essenLow: '', essenIndv: '', summary: '', recommendation: '');
  final TextStyle text_style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  String loc = LocationDatePage().getLocation();
  String date = LocationDatePage().getDate();
  String location_date = LocationDatePage().getLocation() + "_" + LocationDatePage().getDate();

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Container
              (
              child: Text
                (
                loc + '\n' + date,
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
                Icons.location_on,
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
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  DocumentReference data = db.collection("hazard_form").doc(location_date);
                  data.get().then(
                        (dataSnapshot) => {
                      if (!dataSnapshot.exists) {
                        DatabaseService().addHazardData(location_date),
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HazardDetailPage(hazardT: blank)));
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
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  DocumentReference data = db.collection("vulnerability_form").doc(location_date);
                  data.get().then(
                        (dataSnapshot) => {
                      if (!dataSnapshot.exists) {
                        DatabaseService().addVulnerableData(location_date),
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VulnerabilityDetailPage(vulnerableT: blankV)));
                  await DatabaseService().addVulnerableData(location_date);
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
                child: Text("Capacity Assessment Form",),
                style: style,
                onPressed:() async
                {
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  DocumentReference data = db.collection("capacity_form").doc(location_date);
                  data.get().then(
                        (dataSnapshot) => {
                      if (!dataSnapshot.exists) {
                        DatabaseService().addCapacityData(location_date),
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CapacityDetailPage(capacityT: blankC)));
                   await DatabaseService().addCapacityData(location_date);
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
                  FirebaseFirestore db = FirebaseFirestore.instance;
                  DocumentReference data = db.collection("disaster_form").doc(location_date);
                  data.get().then(
                        (dataSnapshot) => {
                      if (!dataSnapshot.exists) {
                        DatabaseService().addDisasterData(location_date),
                      }
                    },
                    onError: (e) => print("Error completing: $e"),
                  );
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DisasterDetailPage(disasterT: blankD)));
                  DatabaseService().addDisasterData(location_date);
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
