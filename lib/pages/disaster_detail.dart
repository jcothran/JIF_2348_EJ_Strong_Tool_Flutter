import 'package:flutter/material.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_disaster.dart';
import '../services/database.dart';
import 'location_date.dart';

//All the necessary text controllers
final communityProfController = TextEditingController();
@override
void communityProfDispose() {
  // Clean up the controller when the widget is disposed.
  communityProfController.dispose();
}

final hazardProfController = TextEditingController();

@override
void hazardProfDispose() {
  // Clean up the controller when the widget is disposed.
  hazardProfController.dispose();
}
final elderHighController = TextEditingController();
@override
void elderHighDispose() {
  // Clean up the controller when the widget is disposed.
  elderHighController.dispose();
}
final elderMedController = TextEditingController();
@override
void elderMedDispose() {
  // Clean up the controller when the widget is disposed.
  elderMedController.dispose();
}
final elderLowController = TextEditingController();
@override
void elderLowDispose() {
  // Clean up the controller when the widget is disposed.
  elderLowController.dispose();
}
final elderIndvController = TextEditingController();
@override
void elderIndvDispose() {
  // Clean up the controller when the widget is disposed.
  elderIndvController.dispose();
}

final childHighController = TextEditingController();
@override
void childHighDispose() {
  // Clean up the controller when the widget is disposed.
  childHighController.dispose();
}
final childMedController = TextEditingController();
@override
void childMedDispose() {
  // Clean up the controller when the widget is disposed.
  childMedController.dispose();
}
final childLowController = TextEditingController();
@override
void childLowDispose() {
  // Clean up the controller when the widget is disposed.
  childLowController.dispose();
}
final childIndvController = TextEditingController();
@override
void childIndvDispose() {
  // Clean up the controller when the widget is disposed.
  childIndvController.dispose();
}
final hsEdHighController = TextEditingController();
@override
void hsEdHighDispose() {
  // Clean up the controller when the widget is disposed.
  hsEdHighController.dispose();
}
final hsEdMedController = TextEditingController();
@override
void hsEdMedDispose() {
  // Clean up the controller when the widget is disposed.
  hsEdMedController.dispose();
}
final hsEdLowController = TextEditingController();
@override
void hsEdLowDispose() {
  // Clean up the controller when the widget is disposed.
  hsEdLowController.dispose();
}
final hsEdIndvController = TextEditingController();
@override
void hsEdIndvDispose() {
  // Clean up the controller when the widget is disposed.
  hsEdIndvController.dispose();
}
final linIsoHighController = TextEditingController();
@override
void linIsoHighDispose() {
  // Clean up the controller when the widget is disposed.
  linIsoHighController.dispose();
}
final linIsoMedController = TextEditingController();
@override
void linIsoMedDispose() {
  // Clean up the controller when the widget is disposed.
  linIsoMedController.dispose();
}
final linIsoLowController = TextEditingController();
@override
void linIsoLowDispose() {
  // Clean up the controller when the widget is disposed.
  linIsoLowController.dispose();
}
final linIsoIndvController = TextEditingController();
@override
void linIsoIndvDispose() {
  // Clean up the controller when the widget is disposed.
  linIsoIndvController.dispose();
}
final pocHighController = TextEditingController();
@override
void pocHighDispose() {
  // Clean up the controller when the widget is disposed.
  pocHighController.dispose();
}
final pocMedController = TextEditingController();
@override
void pocMedDispose() {
  // Clean up the controller when the widget is disposed.
  pocMedController.dispose();
}
final pocLowController = TextEditingController();
@override
void pocLowDispose() {
  // Clean up the controller when the widget is disposed.
  pocLowController.dispose();
}
final pocIndvController = TextEditingController();
@override
void pocIndvDispose() {
  // Clean up the controller when the widget is disposed.
  pocIndvController.dispose();
}
final lincHighController = TextEditingController();
@override
void lincHighDispose() {
  // Clean up the controller when the widget is disposed.
  lincHighController.dispose();
}
final lincMedController = TextEditingController();
@override
void lincMedDispose() {
  // Clean up the controller when the widget is disposed.
  lincMedController.dispose();
}
final lincLowController = TextEditingController();
@override
void lincLowDispose() {
  // Clean up the controller when the widget is disposed.
  lincLowController.dispose();
}
final lincIndvController = TextEditingController();
@override
void lincIndvDispose() {
  // Clean up the controller when the widget is disposed.
  lincIndvController.dispose();
}
final nheHighController = TextEditingController();
@override
void nheHighDispose() {
  // Clean up the controller when the widget is disposed.
  nheHighController.dispose();
}
final nheMedController = TextEditingController();
@override
void nheMedDispose() {
  // Clean up the controller when the widget is disposed.
  nheMedController.dispose();
}
final nheLowController = TextEditingController();
@override
void nheLowDispose() {
  // Clean up the controller when the widget is disposed.
  nheLowController.dispose();
}
final nheIndvController = TextEditingController();
@override
void nheIndvDispose() {
  // Clean up the controller when the widget is disposed.
  nheIndvController.dispose();
}
final housingHighController = TextEditingController();
@override
void housingHighDispose() {
  // Clean up the controller when the widget is disposed.
  housingHighController.dispose();
}
final housingMedController = TextEditingController();
@override
void housingMedDispose() {
  // Clean up the controller when the widget is disposed.
  housingMedController.dispose();
}
final housingLowController = TextEditingController();
@override
void housingLowDispose() {
  // Clean up the controller when the widget is disposed.
  housingLowController.dispose();
}
final housingIndvController = TextEditingController();
@override
void housingIndvDispose() {
  // Clean up the controller when the widget is disposed.
  housingIndvController.dispose();
}
final schoolsHighController = TextEditingController();
@override
void schoolsHighDispose() {
  // Clean up the controller when the widget is disposed.
  schoolsHighController.dispose();
}
final schoolsMedController = TextEditingController();
@override
void schoolsMedDispose() {
  // Clean up the controller when the widget is disposed.
  schoolsMedController.dispose();
}
final schoolsLowController = TextEditingController();
@override
void schoolsLowDispose() {
  // Clean up the controller when the widget is disposed.
  schoolsLowController.dispose();
}

final schoolsIndvController = TextEditingController();
@override
void schoolsIndvDispose() {
  // Clean up the controller when the widget is disposed.
  schoolsIndvController.dispose();
}
final hospHighController = TextEditingController();
@override
void hospHighDispose() {
  // Clean up the controller when the widget is disposed.
  hospHighController.dispose();
}
final hospMedController = TextEditingController();
@override
void hospMedDispose() {
  // Clean up the controller when the widget is disposed.
  hospMedController.dispose();
}
final hospLowController = TextEditingController();
@override
void hospLowDispose() {
  // Clean up the controller when the widget is disposed.
  hospLowController.dispose();
}
final hospIndvController = TextEditingController();
@override
void hospIndvDispose() {
  // Clean up the controller when the widget is disposed.
  hospIndvController.dispose();
}
final wasteHighController = TextEditingController();
@override
void wasteHighDispose() {
  // Clean up the controller when the widget is disposed.
  wasteHighController.dispose();
}
final wasteMedController = TextEditingController();
@override
void wasteMedDispose() {
  // Clean up the controller when the widget is disposed.
  wasteMedController.dispose();
}
final wasteLowController = TextEditingController();
@override
void wasteLowDispose() {
  // Clean up the controller when the widget is disposed.
  wasteLowController.dispose();
}
final wasteIndvController = TextEditingController();
@override
void wasteIndvDispose() {
  // Clean up the controller when the widget is disposed.
  wasteIndvController.dispose();
}
final elecHighController = TextEditingController();
@override
void elecHighDispose() {
  // Clean up the controller when the widget is disposed.
  elecHighController.dispose();
}
final elecMedController = TextEditingController();
@override
void elecMedDispose() {
  // Clean up the controller when the widget is disposed.
  elecMedController.dispose();
}
final elecLowController = TextEditingController();
@override
void elecLowDispose() {
  // Clean up the controller when the widget is disposed.
  elecLowController.dispose();
}
final elecIndvController = TextEditingController();
@override
void elecIndvDispose() {
  // Clean up the controller when the widget is disposed.
  elecIndvController.dispose();
}
final waterHighController = TextEditingController();
@override
void waterHighDispose() {
  // Clean up the controller when the widget is disposed.
  waterHighController.dispose();
}
final waterMedController = TextEditingController();
@override
void waterMedDispose() {
  // Clean up the controller when the widget is disposed.
  waterMedController.dispose();
}
final waterLowController = TextEditingController();
@override
void waterLowDispose() {
  // Clean up the controller when the widget is disposed.
  waterLowController.dispose();
}
final waterIndvController = TextEditingController();
@override
void waterIndvDispose() {
  // Clean up the controller when the widget is disposed.
  waterIndvController.dispose();
}
final wasteWaterHighController = TextEditingController();
@override
void wasteWaterHighDispose() {
  // Clean up the controller when the widget is disposed.
  wasteWaterHighController.dispose();
}
final wasteWaterMedController = TextEditingController();
@override
void wasteWaterMedDispose() {
  // Clean up the controller when the widget is disposed.
  wasteWaterMedController.dispose();
}
final wasteWaterLowController = TextEditingController();
@override
void wasteWaterLowDispose() {
  // Clean up the controller when the widget is disposed.
  wasteWaterLowController.dispose();
}
final wasteWaterIndvController = TextEditingController();
@override
void wasteWaterIndvDispose() {
  // Clean up the controller when the widget is disposed.
  wasteWaterIndvController.dispose();
}
final essenHighController = TextEditingController();
@override
void essenHighDispose() {
  // Clean up the controller when the widget is disposed.
  essenHighController.dispose();
}
final essenMedController = TextEditingController();
@override
void essenMedDispose() {
  // Clean up the controller when the widget is disposed.
  essenMedController.dispose();
}
final essenLowController = TextEditingController();
@override
void essenLowDispose() {
  // Clean up the controller when the widget is disposed.
  essenLowController.dispose();
}
final essenIndvController = TextEditingController();
@override
void essenIndvDispose() {
  // Clean up the controller when the widget is disposed.
  essenIndvController.dispose();
}
final readyGapsController = TextEditingController();
@override
void readyGapsDispose() {
  // Clean up the controller when the widget is disposed.
  readyGapsController.dispose();
}
final prevGapsController = TextEditingController();
@override
void prevGapsDispose() {
  // Clean up the controller when the widget is disposed.
  prevGapsController.dispose();
}
final mitiGapsController = TextEditingController();
@override
void mitiGapsDispose() {
  // Clean up the controller when the widget is disposed.
  mitiGapsController.dispose();
}
final summaryController = TextEditingController();
@override
void summaryDispose() {
  // Clean up the controller when the widget is disposed.
  summaryController.dispose();
}
final recommendationController = TextEditingController();
@override
void recommendationDispose() {
  // Clean up the controller when the widget is disposed.
  recommendationController.dispose();
}


class DisasterDetailPage extends StatelessWidget {
  final DisasterT disasterT;
  const DisasterDetailPage({
    Key? key,
    required this.disasterT,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          disasterT.communityProf = communityProfController.text;
          disasterT.hazardProf = hazardProfController.text;
          disasterT.elderHigh = elderHighController.text;
          disasterT.elderMed = elderMedController.text;
          disasterT.elderLow = elderLowController.text;
          disasterT.elderIndv = elderIndvController.text;
          disasterT.childHigh = childHighController.text;
          disasterT.childMed = childMedController.text;
          disasterT.childLow = childLowController.text;
          disasterT.childIndv = childIndvController.text;
          disasterT.hsEdHigh = hsEdHighController.text;
          disasterT.hsEdMed = hsEdMedController.text;
          disasterT.hsEdLow = hsEdLowController.text;
          disasterT.hsEdIndv = hsEdIndvController.text;
          disasterT.linIsoHigh = linIsoHighController.text;
          disasterT.linIsoMed = linIsoMedController.text;
          disasterT.linIsoLow = linIsoLowController.text;
          disasterT.linIsoIndv = linIsoIndvController.text;
          disasterT.pocHigh = pocHighController.text;
          disasterT.pocMed = pocMedController.text;
          disasterT.pocLow = pocLowController.text;
          disasterT.pocIndv = pocIndvController.text;
          disasterT.lincHigh = lincHighController.text;
          disasterT.lincMed = lincMedController.text;
          disasterT.lincLow = lincLowController.text;
          disasterT.lincIndv = lincIndvController.text;
          disasterT.nheHigh = nheHighController.text;
          disasterT.nheMed = nheMedController.text;
          disasterT.nheLow = nheLowController.text;
          disasterT.nheIndv = nheIndvController.text;
          disasterT.housingHigh = housingHighController.text;
          disasterT.housingMed = housingMedController.text;
          disasterT.housingLow = housingLowController.text;
          disasterT.housingIndv = housingIndvController.text;
          disasterT.schoolsHigh = schoolsHighController.text;
          disasterT.schoolsMed = schoolsMedController.text;
          disasterT.schoolsLow = schoolsLowController.text;
          disasterT.schoolsIndv = schoolsIndvController.text;
          disasterT.hospHigh = hospHighController.text;
          disasterT.hospMed = hospMedController.text;
          disasterT.hospLow = hospLowController.text;
          disasterT.hospIndv = hospIndvController.text;
          disasterT.wasteHigh = wasteHighController.text;
          disasterT.wasteMed = wasteMedController.text;
          disasterT.wasteLow = wasteLowController.text;
          disasterT.wasteIndv = wasteIndvController.text;
          disasterT.elecHigh = elecHighController.text;
          disasterT.elecMed = elecMedController.text;
          disasterT.elecLow = elecLowController.text;
          disasterT.elecIndv = elecIndvController.text;
          disasterT.waterHigh = waterHighController.text;
          disasterT.waterMed = waterMedController.text;
          disasterT.waterLow = waterLowController.text;
          disasterT.waterIndv = waterIndvController.text;
          disasterT.wasteWaterHigh = wasteWaterHighController.text;
          disasterT.wasteWaterMed = wasteWaterMedController.text;
          disasterT.wasteWaterLow = wasteWaterLowController.text;
          disasterT.wasteWaterIndv = wasteWaterIndvController.text;
          disasterT.essenHigh = essenHighController.text;
          disasterT.essenMed = essenMedController.text;
          disasterT.essenLow = essenLowController.text;
          disasterT.essenIndv = essenIndvController.text;
          disasterT.readyGaps = readyGapsController.text;
          disasterT.prevGaps = prevGapsController.text;
          disasterT.mitiGaps = mitiGapsController.text;
          disasterT.summary = summaryController.text;
          disasterT.recommendation = recommendationController.text;



          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PdfPreviewDisasterPage(disasterT: disasterT),
          ),
          );

          String location_date = LocationDatePage().getLocation() + "_" + LocationDatePage().getDate();

          await DatabaseService().updateDisasterData(
              location_date,
              communityProfController.text,
              hazardProfController.text,
              elderHighController.text,
              elderMedController.text,
              elderLowController.text,
              elderIndvController.text,
              childHighController.text,
              childMedController.text,
              childLowController.text,
              childIndvController.text,
              hsEdHighController.text,
              hsEdMedController.text,
              hsEdLowController.text,
              hsEdIndvController.text,
              linIsoHighController.text,
              linIsoMedController.text,
              linIsoLowController.text,
              linIsoIndvController.text,
              pocHighController.text,
              pocMedController.text,
              pocLowController.text,
              pocIndvController.text,
              lincHighController.text,
              lincMedController.text,
              lincLowController.text,
              lincIndvController.text,
              nheHighController.text,
              nheMedController.text,
              nheLowController.text,
              nheIndvController.text,
              housingHighController.text,
              housingMedController.text,
              housingLowController.text,
              housingIndvController.text,
              schoolsHighController.text,
              schoolsMedController.text,
              schoolsLowController.text,
              schoolsIndvController.text,
              hospHighController.text,
              hospMedController.text,
              hospLowController.text,
              hospIndvController.text,
              wasteHighController.text,
              wasteMedController.text,
              wasteLowController.text,
              wasteIndvController.text,
              elecHighController.text,
              elecMedController.text,
              elecLowController.text,
              elecIndvController.text,
              waterHighController.text,
              waterMedController.text,
              waterLowController.text,
              waterIndvController.text,
              wasteWaterHighController.text,
              wasteWaterMedController.text,
              wasteWaterLowController.text,
              wasteWaterIndvController.text,
              essenHighController.text,
              essenMedController.text,
              essenLowController.text,
              essenIndvController.text,
              readyGapsController.text,
              prevGapsController.text,
              mitiGapsController.text,
              summaryController.text,
              recommendationController.text,
          );
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text(disasterT.name),
      ),
      body: ListView(
        children: [

          Container(height: 50),
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Community Profile:"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: communityProfController,),
                    flex: 4,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Hazard Profile:"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hazardProfController,),
                    flex: 4,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Elements at risk:"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Locations of elements at risk specific to the hazard"),
                    flex: 4,
                  ),
                ],
              ),

            ],
          ),
          Table(
            //border: TableBorder.all(color: PdfColors.black),
            children: [

              TableRow(
                children: [
                  Expanded(
                    child: PaddedText(""),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("High Vul."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Med. Vul."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Low Vul."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Indv. Vul."),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText(""),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("<0.5 mi."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("0.5-1.0 mi."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText(">1.0 mi."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("        "),
                    flex: 1,
                  ),
                ],
              ),

              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Elderly(65+)"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elderHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elderMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elderLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elderIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Children <5"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: childHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: childMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: childLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: childIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("<HS Education"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hsEdHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hsEdMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hsEdLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hsEdIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Linguistic isolation"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: linIsoHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: linIsoMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: linIsoLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: linIsoIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("People of color"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: pocHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: pocMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: pocLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: pocIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Low income"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: lincHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: lincMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: lincLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: lincIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Non-human elements"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: nheHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: nheMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: nheLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: nheIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Housing units"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: housingHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: housingMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: housingLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: housingIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Schools"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: schoolsHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: schoolsMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: schoolsLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: schoolsIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Hospitals/Clinics"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hospHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hospMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hospLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: hospIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("S-fund/hazardous waste sites"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Electric supply center"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elecHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elecMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elecLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: elecIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Water supply center"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: waterHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: waterMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: waterLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: waterIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Wastewater center"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteWaterHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteWaterMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteWaterLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: wasteWaterIndvController),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Essential bussinesses"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: essenHighController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: essenMedController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: essenLowController),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: essenIndvController),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Readiness Gaps:"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: readyGapsController),
                    flex: 4,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Prevention Gaps"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: prevGapsController),
                    flex: 4,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Mitigation Gaps"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: mitiGapsController),
                    flex: 4,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Recommendations of the Disaster Assessment:"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: recommendationController),
                    flex: 4,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Summary of the Disaster Assessment:"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(controller: summaryController),
                    flex: 4,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget PaddedText(
    final String text, {
      final TextAlign align = TextAlign.left,
    }) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
