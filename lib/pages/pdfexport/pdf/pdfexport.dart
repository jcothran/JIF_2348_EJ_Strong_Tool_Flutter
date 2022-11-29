import 'dart:typed_data';

import 'package:makepdfs/models/hazardT.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdf(HazardT hazardT) async {
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
                    Text("Hazard Assessment Form",
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
            Container(height: 50),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [

                ...hazardT.items.map(
                  (e) => TableRow(
                    children: [
                      Expanded(
                        child: PaddedText(e.characteristics),
                        flex: 3,
                      ),

                      Expanded(
                        child: PaddedText(e.elements),
                        flex: 2,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(height: 50),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    PaddedText('Analytical Description of Hazard'),
                    PaddedText(
                      'Due to extreme amounts of accumulated rainfall, my house was whisked away off of its foundation',
                    )
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText(
                      'How will it affect me?',
                    ),
                    PaddedText(
                      'Extremely',
                    )
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText(
                      'How will it affect my community?',
                    ),
                    PaddedText('Sadly')
                  ],
                )
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

