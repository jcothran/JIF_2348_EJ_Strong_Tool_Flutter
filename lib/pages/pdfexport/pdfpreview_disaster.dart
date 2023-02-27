import 'dart:typed_data';

import 'package:makepdfs/models/vulnerableT.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdfVulnerable(VulnerableT vulnerableT) async {
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
                    Text("Vulnerability Assessment Form",
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
                      child: PaddedText('Hazard Profile:'),
                      flex: 1,
                    ),

                    Expanded(
                      child: PaddedText(vulnerableT.hazardProf),
                      flex: 3,
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
                      flex: 3,
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
                  ],
                ),

                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Total Population"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.popHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.popMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.popLow),
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
                      child: PaddedText(vulnerableT.elderHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.elderMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.elderLow),
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
                      child: PaddedText(vulnerableT.childHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.childMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.childLow),
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
                      child: PaddedText(vulnerableT.hsEdHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.hsEdMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.hsEdLow),
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
                      child: PaddedText(vulnerableT.linIsoHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.linIsoMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.linIsoLow),
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
                      child: PaddedText(vulnerableT.pocHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.pocMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.pocLow),
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
                      child: PaddedText(vulnerableT.lincHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.lincMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.lincLow),
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
                      child: PaddedText(vulnerableT.nheHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.nheMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.nheLow),
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
                      child: PaddedText(vulnerableT.housingHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.housingMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.housingLow),
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
                      child: PaddedText(vulnerableT.schoolsHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.schoolsMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.schoolsLow),
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
                      child: PaddedText(vulnerableT.hospHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.hospMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.hospLow),
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
                      child: PaddedText(vulnerableT.wasteHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.wasteMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.wasteLow),
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
                      child: PaddedText(vulnerableT.elecHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.elecMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.elecLow),
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
                      child: PaddedText(vulnerableT.waterHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.waterMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.waterLow),
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
                      child: PaddedText(vulnerableT.wasteWaterHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.wasteWaterMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.wasteWaterLow),
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
                      child: PaddedText(vulnerableT.essenHigh),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.essenMed),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.essenLow),
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
                      child: PaddedText("Summary of the Vulerability Assessment:"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(vulnerableT.summary),
                      flex: 3,
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
