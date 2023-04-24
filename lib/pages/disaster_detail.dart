import 'package:flutter/material.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_disaster.dart';
import '../services/database.dart';
import 'location_date.dart';
import 'package:flutter/services.dart';

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
        onPressed: () {
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
          disasterT.summary = summaryController.text;
          disasterT.recommendation = recommendationController.text;

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PdfPreviewDisasterPage(disasterT: disasterT),
          ),
          );
          // rootBundle.
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text(disasterT.name),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(11)),
          Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 7),
                  child: Text(
                    "Community Profile:",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Expanded(
                  child: TextField(controller: communityProfController),
                ),
              ]
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25, left: 10, bottom: 7),
                child: Text(
                  "Hazard Profile:",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                child: TextField(controller: hazardProfController),
              ),
            ],
          ),

          Container(
             padding: EdgeInsets.only(top: 25, left: 10, bottom: 7),
             child: Text(
                "Locations of elements at \nrisk specific to the hazard:",
               style: TextStyle(
                  fontSize: 16
               ),
             ),
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
                    child: PaddedText("< 0.5 mi."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("0.5 - 1.0 mi."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("> 1.0 mi."),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Indv \n Survivability"),
                    flex: 1,
                  ),
                ],
              ),
            ]
          ),

          Container(
             padding: EdgeInsets.only(left: 10, bottom: 7),
               child: Text(
                  "Elements At \nRisk:",
                  style: TextStyle(
                    fontSize: 16
                  ),
               ),
          ),

          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Elderly(65+)"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: elderHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                      controller: elderMedController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                      ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: elderLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: elderIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: childHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: childMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: childLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: childIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: hsEdHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: hsEdMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: hsEdLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: hsEdIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: linIsoHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: linIsoMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: linIsoLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: linIsoIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: pocHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: pocMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: pocLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: pocIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: lincHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: lincMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: lincLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: lincIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                ],
              ),
            ]
          ),

          Container(
            padding: EdgeInsets.only(top: 25, left: 10, bottom: 7),
            child: Text(
              "Non-Human \nElements:",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
          ),

          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Housing units"),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: housingHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: housingMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: housingLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: housingIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: schoolsHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: schoolsMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: schoolsLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: schoolsIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: hospHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: hospMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: hospLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: hospIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: wasteHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: wasteMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: wasteLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: wasteIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: elecHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: elecMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: elecLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: elecIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: waterHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: waterMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: waterLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: waterIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: wasteWaterHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: wasteWaterMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: wasteWaterLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: wasteWaterIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
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
                    child: TextField(
                        controller: essenHighController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: essenMedController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: essenLowController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                  Expanded(
                    child: TextField(
                        controller: essenIndvController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25, left: 10, bottom: 7),
                child: Text(
                  "Summary:",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                child: TextField(controller: summaryController),
              ),
            ]
          ),

          Padding(padding: EdgeInsets.all(5)),

          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25, left: 10, bottom: 7),
                child: Text(
                  "Recommendations:",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                child: TextField(controller: recommendationController),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(21)),
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
      padding: EdgeInsets.all(15),
      child: Text(
        text,
        textAlign: align,
      ),
    );
