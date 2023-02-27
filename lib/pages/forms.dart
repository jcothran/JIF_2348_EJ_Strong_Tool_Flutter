import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/models/vulnerableT.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/vulnerability_detail.dart';
import 'package:makepdfs/pages/capacity_detail.dart';
import 'package:makepdfs/pages/disaster_detail.dart';

      //page for navigating to the various form pages

class FormsPage extends StatelessWidget 
{
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), fixedSize: Size(240, 80));
  final HazardT blank = new HazardT(name: 'Hazard Assessment Form', headers: '', origin: '', force: '', warning: '', forewarning: '', speed: '', freq: '', period: '', duration: '', desc: '', affectMe: '', affectCommunity: '');
  final VulnerableT blankV = new VulnerableT(name: "Vulnerability Assessment Form", hazardProf: '', popHigh: '', popMed: '', popLow: '', elderHigh: '', elderMed: '', elderLow: '', childHigh: '', childMed: '', childLow: '', hsEdHigh: '', hsEdMed: '', hsEdLow: '', linIsoHigh: '', linIsoMed: '', linIsoLow: '', pocHigh: '', pocMed: '', pocLow: '', lincHigh: '', lincMed: '', lincLow: '', nheHigh: '', nheMed: '', nheLow: '', housingHigh: '', housingMed: '', housingLow: '', schoolsHigh: '', schoolsMed: '', schoolsLow: '', hospHigh: '', hospMed: '', hospLow: '', wasteHigh: '', wasteMed: '', wasteLow: '', elecHigh: '', elecMed: '', elecLow: '', waterHigh: '', waterMed: '', waterLow: '', wasteWaterHigh: '', wasteWaterMed: '', wasteWaterLow: '', essenHigh: '', essenMed: '', essenLow: '', summary: '');
  final CapacityT blankC = new CapacityT(name: "Capacity Assessment Form", prevExist: '', prevReq: '', prevGaps: '', mitiExist: '', mitiReq: '', mitiGaps: '', heExistHigh: '', heReqHigh: '', heGapsHigh: '', nonHeExistHigh: '', nonHeReqHigh: '', nonHeGapsHigh: '', heExistMed: '', heReqMed: '', heGapsMed: '', nonHeExistMed: '', nonHeReqMed: '', nonHeGapsMed: '', heExistLowBef: '', heReqLowBef: '', heGapsLowBef: '', nonHeExistLowBef: '', nonHeReqLowBef: '', nonHeGapsLowBef: '', heExistLowDur: '', heReqLowDur: '', heGapsLowDur: '', nonHeExistLowDur: '', nonHeReqLowDur: '', nonHeGapsLowDur: '', commReadyBefReq: '', commReadyBefGaps: '', commReadyDurReq: '', commReadyDurGaps: '');
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VulnerabilityDetailPage(vulnerableT: blankV)));
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
                onPressed:()
                {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CapacityDetailPage(capacityT: blankC)));
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
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DisasterDetailPage(disasterT: blank)));
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
