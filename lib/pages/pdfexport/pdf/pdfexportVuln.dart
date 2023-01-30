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

