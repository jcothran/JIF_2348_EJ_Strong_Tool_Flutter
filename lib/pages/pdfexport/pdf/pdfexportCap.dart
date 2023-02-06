import 'dart:typed_data';

import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/pages/pdfexport/pdf/pdfexport.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdfCapacity(CapacityT capacityT) async {
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
                    Text("Capacity Assessment Form",
                      style: Theme.of(context).header1,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),

                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(imageLogo),
                ),
              ],
            ),
            Container(height: 50),
            //Prev Table
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
              TableRow(
              children: [
                  Expanded(
                    child: PaddedText(""),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
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
                      child: PaddedText("Prevention"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(capacityT.prevExist),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(capacityT.prevReq),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText(capacityT.prevGaps),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
            //Miti Table
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    Expanded(
                    child: PaddedText("Mitigation"),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.mitiExist),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.mitiReq),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.mitiGaps),
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
                        child:
                        PaddedText(""),
                        flex: 1,
                      ),
                    ]
                ),
              ],
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child:
                        PaddedText("Note: When carrying out survivability assessment"
                        "all elements at risk assesd for level of vulnerability during "
                        "the vulnerability assessment should be considered here"),
                        flex: 1,
                    ),
                  ]
                ),
              ],
            ),
            //High Vuln Table
            Table(
              children: [
                TableRow(
                  children: [
                    PaddedText("Highly Vulnerable: Survivability before hazard"),
                  ]
                ),
              ],
            ),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Element At Risk"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText("Existing"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText("Required"),
                      flex: 1,
                    ),
                    Expanded(
                      child: PaddedText("Gaps"),
                      flex: 1,
                    ),
                  ],
                ),
               TableRow(
                  children: [
                    Expanded(
                    child: PaddedText("Human Element"),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.heExistHigh),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.heReqHigh),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.heGapsHigh),
                    flex: 1,
                    ),
                  ],
                 ),
                 TableRow(
                    children: [
                      Expanded(
                      child: PaddedText("Non-Human Element"),
                      flex: 1,
                      ),
                      Expanded(
                      child: PaddedText(capacityT.nonHeExistHigh),
                      flex: 1,
                      ),
                      Expanded(
                      child: PaddedText(capacityT.nonHeReqHigh),
                      flex: 1,
                      ),
                      Expanded(
                      child: PaddedText(capacityT.nonHeGapsHigh),
                      flex: 1,
                      ),
                    ],
                 ),
              ],
            ),
            //Med Vuln Table
            Table(
              children: [
                 TableRow(
                   children: [
                     PaddedText("Medium Vulnerable: Survivability during hazard"),
                   ]
                 ),
              ],
            ),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                children: [
                  Expanded(
                  child: PaddedText("Element At Risk"),
                  flex: 1,
                  ),
                  Expanded(
                  child: PaddedText("Existing"),
                  flex: 1,
                  ),
                  Expanded(
                  child: PaddedText("Required"),
                  flex: 1,
                  ),
                  Expanded(
                  child: PaddedText("Gaps"),
                  flex: 1,
                  ),
                ],
               ),
                TableRow(
                  children: [
                    Expanded(
                    child: PaddedText("Human Element"),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.heExistMed),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.heReqMed),
                    flex: 1,
                    ),
                    Expanded(
                    child: PaddedText(capacityT.heGapsMed),
                    flex: 1,
                    ),
                  ],
                ),
                TableRow(
                    children: [
                      Expanded(
                      child: PaddedText("Non-Human Element"),
                      flex: 1,
                      ),
                      Expanded(
                      child: PaddedText(capacityT.nonHeExistMed),
                      flex: 1,
                      ),
                      Expanded(
                      child: PaddedText(capacityT.nonHeReqMed),
                      flex: 1,
                      ),
                      Expanded(
                      child: PaddedText(capacityT.nonHeGapsMed),
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
        build: (context)
  {
    return Column(
      children: [
        //Low Vuln Before Table
              Table(
                children: [
                  TableRow(
                      children: [
                        PaddedText("Low Vulnerable: Survivability before hazard"),
                      ]
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(color: PdfColors.black),
                children: [
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Element At Risk"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Existing"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Required"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Gaps"),
                        flex: 1,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Human Element"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.heExistLowBef),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.heReqLowBef),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.heGapsLowBef),
                        flex: 1,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Non-Human Element"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.nonHeExistLowBef),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.nonHeReqLowBef),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.nonHeGapsLowBef),
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
              //Low Vuln During Table
              Table(
                children: [
                  TableRow(
                      children: [
                        PaddedText("Low Vulnerable: Survivability during hazard"),
                      ]
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(color: PdfColors.black),
                children: [
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Element At Risk"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Existing"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Required"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Gaps"),
                        flex: 1,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Human Element"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.heExistLowDur),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.heReqLowDur),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.heGapsLowDur),
                        flex: 1,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Non-Human Element"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.nonHeExistLowDur),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.nonHeReqLowDur),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.nonHeGapsLowDur),
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
                        PaddedText("Community Readiness: Before the hazard"),
                      ]
                  ),
                ],
              ),
              //Comm Readiness Before Table
              Table(
                border: TableBorder.all(color: PdfColors.black),
                children: [
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Existing"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Required"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Gaps"),
                        flex: 1,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Institutions, systems\n"
                            "(THE CIELO ProTEC)\n"
                            "..."),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.commReadyBefReq),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.commReadyBefGaps),
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
                        PaddedText("Community Readiness: During the hazard"),
                      ]
                  ),
                ],
              ),
              //Comm Readiness During Table
              Table(
                border: TableBorder.all(color: PdfColors.black),
                children: [
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Existing"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Required"),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText("Gaps"),
                        flex: 1,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Expanded(
                        child: PaddedText("Institutions, systems\n"
                            "(THE CIELO ProTEC)\n"
                            "..."),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.commReadyDurReq),
                        flex: 1,
                      ),
                      Expanded(
                        child: PaddedText(capacityT.commReadyDurGaps),
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
  return pdf.save();
}


