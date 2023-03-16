import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_capacity.dart';

import '../services/database.dart';
import 'location.dart';


      //All the necessary text controllers
final prevExistController = TextEditingController();
final prevReqController = TextEditingController();
final prevGapsController = TextEditingController();
final mitiExistController = TextEditingController();
final mitiReqController = TextEditingController();
final mitiGapsController = TextEditingController();
final heExistHighController = TextEditingController();
final heReqHighController = TextEditingController();
final heGapsHighController = TextEditingController();
final nonHeExistHighController = TextEditingController();
final nonHeReqHighController = TextEditingController();
final nonHeGapsHighController = TextEditingController();
final heExistMedController = TextEditingController();
final heReqMedController = TextEditingController();
final heGapsMedController = TextEditingController();
final nonHeExistMedController = TextEditingController();
final nonHeReqMedController = TextEditingController();
final nonHeGapsMedController = TextEditingController();
final heExistLowBefController = TextEditingController();
final heReqLowBefController = TextEditingController();
final heGapsLowBefController = TextEditingController();
final nonHeExistLowBefController = TextEditingController();
final nonHeReqLowBefController = TextEditingController();
final nonHeGapsLowBefController = TextEditingController();
final heExistLowDurController = TextEditingController();
final heReqLowDurController = TextEditingController();
final heGapsLowDurController = TextEditingController();
final nonHeExistLowDurController = TextEditingController();
final nonHeReqLowDurController = TextEditingController();
final nonHeGapsLowDurController = TextEditingController();
final commReadyBefReqController = TextEditingController();
final commReadyBefGapsController = TextEditingController();
final commReadyDurReqController = TextEditingController();
final commReadyDurGapsController = TextEditingController();

@override
void disposeController(TextEditingController c) {
  // Clears the controller passed in after the widget is disposed
  c.dispose();
}

class CapacityDetailPage extends StatelessWidget {
  final CapacityT capacityT;
  const CapacityDetailPage({
    Key? key,
    required this.capacityT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
              //sending the data from the text controllers to the pdf handler
            capacityT.prevExist = prevExistController.text;
            capacityT.prevReq = prevReqController.text;
            capacityT.prevGaps = prevGapsController.text;
            capacityT.mitiExist = mitiExistController.text;
            capacityT.mitiReq = mitiReqController.text;
            capacityT.mitiGaps = mitiGapsController.text;
            capacityT.heExistHigh = heExistHighController.text;
            capacityT.heReqHigh = heReqHighController.text;
            capacityT.heGapsHigh = heGapsHighController.text;
            capacityT.nonHeExistHigh = nonHeExistHighController.text;
            capacityT.nonHeReqHigh = nonHeReqHighController.text;
            capacityT.nonHeGapsHigh = nonHeGapsHighController.text;
            capacityT.heExistMed = heExistMedController.text;
            capacityT.heReqMed = heReqMedController.text;
            capacityT.heGapsMed = heGapsMedController.text;
            capacityT.nonHeExistMed = nonHeExistMedController.text;
            capacityT.nonHeReqMed = nonHeReqMedController.text;
            capacityT.nonHeGapsMed = nonHeGapsMedController.text;
            capacityT.heExistLowBef = heExistLowBefController.text;
            capacityT.heReqLowBef = heReqLowBefController.text;
            capacityT.heGapsLowBef = heGapsLowBefController.text;
            capacityT.nonHeExistLowBef = nonHeExistLowBefController.text;
            capacityT.nonHeReqLowBef = nonHeReqLowBefController.text;
            capacityT.nonHeGapsLowBef = nonHeGapsLowBefController.text;
            capacityT.heExistLowDur = heExistLowDurController.text;
            capacityT.heReqLowDur = heReqLowDurController.text;
            capacityT.heGapsLowDur = heGapsLowDurController.text;
            capacityT.nonHeExistLowDur = nonHeExistLowDurController.text;
            capacityT.nonHeReqLowDur = nonHeReqLowDurController.text;
            capacityT.nonHeGapsLowDur = nonHeGapsLowDurController.text;
            capacityT.commReadyBefReq = commReadyBefReqController.text;
            capacityT.commReadyBefGaps = commReadyBefGapsController.text;
            capacityT.commReadyDurReq = commReadyDurReqController.text;
            capacityT.commReadyDurGaps = commReadyDurGapsController.text;

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PdfPreviewCapacityPage(capacityT : capacityT),
              ),
            );

            String location = LocationPage().getLocation();

            //update form in database
            await DatabaseService().updateCapacityData(
              location,
              prevExistController.text,
              prevReqController.text,
              prevGapsController.text,
              mitiExistController.text,
              mitiReqController.text,
              mitiGapsController.text,
              heExistHighController.text,
              heReqHighController.text,
              heGapsHighController.text,
              nonHeExistHighController.text,
              nonHeReqHighController.text,
              nonHeGapsHighController.text,
              heExistMedController.text,
              heReqMedController.text,
              heGapsMedController.text,
              nonHeExistMedController.text,
              nonHeReqMedController.text,
              nonHeGapsMedController.text,
              heExistLowBefController.text,
              heReqLowBefController.text,
              heGapsLowBefController.text,
              nonHeExistLowBefController.text,
              nonHeReqLowBefController.text,
              nonHeGapsLowBefController.text,
              heExistLowDurController.text,
              heReqLowDurController.text,
              heGapsLowDurController.text,
              nonHeExistLowDurController.text,
              nonHeReqLowDurController.text,
              nonHeGapsLowDurController.text,
              commReadyBefReqController.text,
              commReadyBefGapsController.text,
              commReadyDurReqController.text,
              commReadyDurGapsController.text,
            );

          },
          child: Icon(Icons.picture_as_pdf),
        ),
        appBar: AppBar(
          title: Text(capacityT.name),
        ),
        body: ListView(
          children: [
            Container(height: 50),
          //Prev table
            Table(
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
              ]
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Prevention"),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: prevExistController,),
                      flex: 1,
                      ),
                    Expanded(
                      child: TextField(controller: prevReqController,),
                      flex: 1,
                      ),
                    Expanded(
                      child: TextField(controller: prevGapsController,),
                      flex: 1,
                     ),
                  ],
                  ),
                ]
              ),
            //Miti table
            Table(
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText("Mitigation"),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: mitiExistController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: mitiReqController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: mitiGapsController,),
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
                        PaddedText("Note: When carrying out survivability assessment"
                        "all elements at risk assesd for level of vulnerability during "
                        "the vulnerability assessment should be considered here"),
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
                      PaddedText("Highly Vulnerable: Survivability before hazard"),
                    ]
                ),
              ],
            ),
            //High Vuln Table
            Table(
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
                      child: TextField(controller: heExistHighController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heReqHighController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heGapsHighController,),
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
                      child: TextField(controller: nonHeExistHighController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeReqHighController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeGapsHighController,),
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
                      child: TextField(controller: heExistMedController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heReqMedController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heGapsMedController,),
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
                      child: TextField(controller: nonHeExistMedController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeReqMedController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeGapsMedController,),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
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
                      child: TextField(controller: heExistLowBefController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heReqLowBefController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heGapsLowBefController,),
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
                      child: TextField(controller: nonHeExistLowBefController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeReqLowBefController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeGapsLowBefController,),
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
                      child: TextField(controller: heExistLowDurController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heReqLowDurController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: heGapsLowDurController,),
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
                      child: TextField(controller: nonHeExistLowDurController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeReqLowDurController,),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: nonHeGapsLowDurController,),
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
                      child: TextField(controller: commReadyBefReqController),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: commReadyBefGapsController),
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
                      child: TextField(controller: commReadyDurReqController),
                      flex: 1,
                    ),
                    Expanded(
                      child: TextField(controller: commReadyDurGapsController),
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
                    PaddedText("Existing Community Readiness:\n"
                                "\n"
                                "Institutions, systems\n"
                                "(THE CIELO ProTEC)\n"
                                "• Transportation\n"
                                "• Health and medical services\n"
                                "• Early warning\n"
                                "• Communication\n"
                                "• Internal response\n"
                                "• Evacuation\n"
                                "• Livelihoods\n"
                                " Organizational development and governance\n"
                                "• Provisions of food, water and securitv\n"
                                "• Technology\n"
                                "• Ecosystems management and restoration\n"
                                "• Coordination and incident command system\n"),
                  ],
                ),
              ]
            ),
          ],
        ),
      );
    }
  }





