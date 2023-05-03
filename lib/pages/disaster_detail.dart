import 'package:flutter/material.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_disaster.dart';
import '../services/database.dart';
import 'location_date.dart';
import 'package:flutter/services.dart';

final communityProfController = TextEditingController();
final hazardProfController = TextEditingController();
final elderHighController = TextEditingController();
final elderMedController = TextEditingController();
final elderLowController = TextEditingController();
final elderIndvController = TextEditingController();
final childHighController = TextEditingController();
final childMedController = TextEditingController();
final childLowController = TextEditingController();
final childIndvController = TextEditingController();
final hsEdHighController = TextEditingController();
final hsEdMedController = TextEditingController();
final hsEdLowController = TextEditingController();
final hsEdIndvController = TextEditingController();
final linIsoHighController = TextEditingController();
final linIsoMedController = TextEditingController();
final linIsoLowController = TextEditingController();
final linIsoIndvController = TextEditingController();
final pocHighController = TextEditingController();
final pocMedController = TextEditingController();
final pocLowController = TextEditingController();
final pocIndvController = TextEditingController();
final lincHighController = TextEditingController();
final lincMedController = TextEditingController();
final lincLowController = TextEditingController();
final lincIndvController = TextEditingController();
final nheHighController = TextEditingController();
final nheMedController = TextEditingController();
final nheLowController = TextEditingController();
final nheIndvController = TextEditingController();
final housingHighController = TextEditingController();
final housingMedController = TextEditingController();
final housingLowController = TextEditingController();
final housingIndvController = TextEditingController();
final schoolsHighController = TextEditingController();
final schoolsMedController = TextEditingController();
final schoolsLowController = TextEditingController();
final schoolsIndvController = TextEditingController();
final hospHighController = TextEditingController();
final hospMedController = TextEditingController();
final hospLowController = TextEditingController();
final hospIndvController = TextEditingController();
final wasteHighController = TextEditingController();
final wasteMedController = TextEditingController();
final wasteLowController = TextEditingController();
final wasteIndvController = TextEditingController();
final elecHighController = TextEditingController();
final elecMedController = TextEditingController();
final elecLowController = TextEditingController();
final elecIndvController = TextEditingController();
final waterHighController = TextEditingController();
final waterMedController = TextEditingController();
final waterLowController = TextEditingController();
final waterIndvController = TextEditingController();
final wasteWaterHighController = TextEditingController();
final wasteWaterMedController = TextEditingController();
final wasteWaterLowController = TextEditingController();
final wasteWaterIndvController = TextEditingController();
final essenHighController = TextEditingController();
final essenMedController = TextEditingController();
final essenLowController = TextEditingController();
final essenIndvController = TextEditingController();
final summaryController = TextEditingController();
final recommendationController = TextEditingController();

class DisasterDetailPage extends StatelessWidget {
  final DisasterT disasterT;
  const DisasterDetailPage({
    Key? key,
    required this.disasterT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    communityProfController.text = disasterT.communityProf;
    hazardProfController.text = disasterT.hazardProf;
    elderHighController.text = disasterT.elderHigh;
    elderMedController.text = disasterT.elderMed;
    elderLowController.text = disasterT.elderLow;
    elderIndvController.text = disasterT.elderIndv;
    childHighController.text = disasterT.childHigh;
    childMedController.text = disasterT.childMed;
    childLowController.text = disasterT.childLow;
    childIndvController.text = disasterT.childIndv;
    hsEdHighController.text = disasterT.hsEdHigh;
    hsEdMedController.text = disasterT.hsEdMed;
    hsEdLowController.text = disasterT.hsEdLow;
    hsEdIndvController.text = disasterT.hsEdIndv;
    linIsoHighController.text = disasterT.linIsoHigh;
    linIsoMedController.text = disasterT.linIsoMed;
    linIsoLowController.text = disasterT.linIsoLow;
    linIsoIndvController.text = disasterT.linIsoIndv;
    pocHighController.text = disasterT.pocHigh;
    pocMedController.text = disasterT.pocMed;
    pocLowController.text = disasterT.pocLow;
    pocIndvController.text = disasterT.pocIndv;
    lincHighController.text = disasterT.lincHigh;
    lincMedController.text = disasterT.lincMed;
    lincLowController.text = disasterT.lincLow;
    lincIndvController.text = disasterT.lincIndv;
    nheHighController.text = disasterT.nheHigh;
    nheMedController.text = disasterT.nheMed;
    nheLowController.text = disasterT.nheLow;
    nheIndvController.text = disasterT.nheIndv;
    housingHighController.text = disasterT.housingHigh;
    housingMedController.text = disasterT.housingMed;
    housingLowController.text = disasterT.housingLow;
    housingIndvController.text = disasterT.housingIndv;
    schoolsHighController.text = disasterT.schoolsHigh;
    schoolsMedController.text = disasterT.schoolsMed;
    schoolsLowController.text = disasterT.schoolsLow;
    schoolsIndvController.text = disasterT.schoolsIndv;
    hospHighController.text = disasterT.hospHigh;
    hospMedController.text = disasterT.hospMed;
    hospLowController.text = disasterT.hospLow;
    hospIndvController.text = disasterT.hospIndv;
    wasteHighController.text = disasterT.wasteHigh;
    wasteMedController.text = disasterT.wasteMed;
    wasteLowController.text = disasterT.wasteLow;
    wasteIndvController.text = disasterT.wasteIndv;
    elecHighController.text = disasterT.elecHigh;
    elecMedController.text = disasterT.elecMed;
    elecLowController.text = disasterT.elecLow;
    elecIndvController.text = disasterT.elecIndv;
    waterHighController.text = disasterT.waterHigh;
    waterMedController.text = disasterT.waterMed;
    waterLowController.text = disasterT.waterLow;
    waterIndvController.text = disasterT.waterIndv;
    wasteWaterHighController.text = disasterT.wasteWaterHigh;
    wasteWaterMedController.text = disasterT.wasteWaterMed;
    wasteWaterLowController.text = disasterT.wasteWaterLow;
    wasteWaterIndvController.text = disasterT.wasteWaterIndv;
    essenHighController.text = disasterT.essenHigh;
    essenMedController.text = disasterT.essenMed;
    essenLowController.text = disasterT.essenLow;
    essenIndvController.text = disasterT.essenIndv;
    summaryController.text = disasterT.summary;
    recommendationController.text = disasterT.recommendation;

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
          disasterT.summary = summaryController.text;
          disasterT.recommendation = recommendationController.text;

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PdfPreviewDisasterPage(disasterT: disasterT),
            ),
          );

          String location_date = LocationDatePage().getLocation() + " " + LocationDatePage().getDate() + " " + LocationDatePage.getUID();

          await DatabaseService().updateDisasterData(location_date, disasterT);
          
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
