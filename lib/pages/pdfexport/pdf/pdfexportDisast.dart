import 'dart:typed_data';

import 'package:makepdfs/models/disasterT.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdfDisaster(DisasterT disasterT) async {
  final pdf = Document();
  final imageLogo = MemoryImage((await rootBundle.load('assets/dhec.png')).buffer.asUint8List());
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Disaster Assessment Form",
                      style: Theme.of(context).header1,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),

                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(imageLogo),
                )
              ],
            ),


            Container(height:50),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText('Community Profile:'),
                      flex: 1,
                    ),

                    Expanded(
                      child: PaddedText(disasterT.communityProf),
                      flex: 4,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText('Hazard Profile:'),
                      flex: 1,
                    ),

                    Expanded(
                      child: PaddedText(disasterT.hazardProf),
                      flex: 4,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText('Elements at risk:'),
                      flex: 1,
                    ),

                    Expanded(
                      child: PaddedText('Locations of elements at risk specific to the hazard'),
                      flex: 4,
                    ),
                  ],
                ),
              ],
            ),


            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText(''),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText('High Vul.'),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText('Med. Vul.'),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText('Low Vul.'),
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
                      child: PaddedText("Individual Survivability"),
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
                      child: PaddedText(disasterT.elderHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.elderMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.elderLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.elderIndv),
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
                      child: PaddedText(disasterT.childHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.childMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.childLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.childIndv),
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
                      child: PaddedText(disasterT.hsEdHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.hsEdMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.hsEdLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.hsEdIndv),
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
                      child: PaddedText(disasterT.linIsoHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.linIsoMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.linIsoLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.linIsoIndv),
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
                      child: PaddedText(disasterT.pocHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.pocMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.pocLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.pocIndv),
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
                      child: PaddedText(disasterT.lincHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.lincMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.lincLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.lincIndv),
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
                      child: PaddedText(disasterT.nheHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.nheMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.nheLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.nheIndv),
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
                      child: PaddedText(disasterT.housingHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.housingMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.housingLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.housingIndv),
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
                      child: PaddedText(disasterT.schoolsHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.schoolsMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.schoolsLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.schoolsIndv),
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
                      child: PaddedText(disasterT.hospHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.hospMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.hospLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.hospIndv),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    ),
  );
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          children: [

            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [

                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("S-fund/hazardous waste sites"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteIndv),
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
                      child: PaddedText(disasterT.elecHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.elecMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.elecLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.elecIndv),
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
                      child: PaddedText(disasterT.waterHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.waterMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.waterLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.waterIndv),
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
                      child: PaddedText(disasterT.wasteWaterHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteWaterMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteWaterLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.wasteWaterIndv),
                      flex: 1,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Essential businesses"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.essenHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.essenMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.essenLow),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.essenIndv),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Summary of the Disaster Assessment:"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.summary),
                      flex: 4,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Recommendation of the Disaster Assessment:"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(disasterT.recommendation),
                      flex: 4,
                    ),
                  ],
                ),
              ],
            ),

          ],
        );
      },
    ),
  );
  return pdf.save();
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
