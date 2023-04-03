import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_capacity.dart';

final prevExistingController = TextEditingController();

@override
void prevExistingDispose() {
  // Clean up the controller when the widget is disposed.
  prevExistingController.dispose();
  //super.dispose();
}

final prevRequiredController = TextEditingController();

@override
void prevRequiredDispose() {
  // Clean up the controller when the widget is disposed.
  prevRequiredController.dispose();
  //super.dispose();
}

final prevGapsController = TextEditingController();

@override
void prevGapsDispose() {
  // Clean up the controller when the widget is disposed.
  prevGapsController.dispose();
  //super.dispose();
}

final mitExistingController = TextEditingController();

@override
void mitExistingDispose() {
  // Clean up the controller when the widget is disposed.
  mitExistingController.dispose();
  //super.dispose();
}

final mitRequiredController = TextEditingController();

@override
void mitRequiredDispose() {
  // Clean up the controller when the widget is disposed.
  mitRequiredController.dispose();
  //super.dispose();
}

final mitGapsController = TextEditingController();

@override
void mitGapsDispose() {
  // Clean up the controller when the widget is disposed.
  mitGapsController.dispose();
  //super.dispose();
}

final highlyVulnElementController = TextEditingController();
//=================================================================
@override
void highlyVulnElementDispose() {
  // Clean up the controller when the widget is disposed.
  highlyVulnElementController.dispose();
  //super.dispose();
}

final highHumanExistingController = TextEditingController();

@override
void highHumanExistingDispose() {
  // Clean up the controller when the widget is disposed.
  highHumanExistingController.dispose();
  //super.dispose();
}

final highHumanRequiredController = TextEditingController();

@override
void highHumanRequiredDispose() {
  // Clean up the controller when the widget is disposed.
  highHumanRequiredController.dispose();
  //super.dispose();
}

final highHumanGapsController = TextEditingController();

@override
void highHumanGapsDispose() {
  // Clean up the controller when the widget is disposed.
  highHumanGapsController.dispose();
  //super.dispose();
}

final highNonHumanExistingController = TextEditingController();

@override
void highNonHumanExistingDispose() {
  // Clean up the controller when the widget is disposed.
  highNonHumanExistingController.dispose();
  //super.dispose();
}

final highNonHumanRequiredController = TextEditingController();

@override
void highNonHumanRequiredDispose() {
  // Clean up the controller when the widget is disposed.
  highNonHumanRequiredController.dispose();
  //super.dispose();
}

final highNonHumanGapsController = TextEditingController();

@override
void highNonHumanGapsDispose() {
  // Clean up the controller when the widget is disposed.
  highNonHumanGapsController.dispose();
  //super.dispose();
}

final medHumanExistingController = TextEditingController();

@override
void medHumanExistingDispose() {
  // Clean up the controller when the widget is disposed.
  medHumanExistingController.dispose();
  //super.dispose();
}

final medHumanRequiredController = TextEditingController();

@override
void medHumanRequiredDispose() {
  // Clean up the controller when the widget is disposed.
  medHumanRequiredController.dispose();
  //super.dispose();
}

final medHumanGapsController = TextEditingController();

@override
void medHumanGapsDispose() {
  // Clean up the controller when the widget is disposed.
  medHumanGapsController.dispose();
  //super.dispose();
}

final medNonHumanExistingController = TextEditingController();

@override
void medNonHumanExistingDispose() {
  medNonHumanExistingController.dispose();
}

final medNonHumanRequiredController = TextEditingController();

@override
void medNonHumanRequiredDispose() {
  medNonHumanRequiredController.dispose();
}

final medNonHumanGapsController = TextEditingController();

@override
void medNonHumanGapsDispose() {
  medNonHumanGapsController.dispose();
}

final lowBeforeHeExistingController = TextEditingController();

@override
void lowBeforeHeExistingDispose() {
  lowBeforeHeExistingController.dispose();
}

final lowBeforeHeRequiredController = TextEditingController();

@override
void lowBeforeHeRequiredDispose() {
  lowBeforeHeRequiredController.dispose();
}

final lowBeforeHeGapsController = TextEditingController();

@override
void lowBeforeHeGapsDispose() {
  lowBeforeHeGapsController.dispose();
}

final lowBeforeNonHEExistingController = TextEditingController();

@override
void lowBeforeNonHEExistingDispose() {
  lowBeforeNonHEExistingController.dispose();
}

final lowNonHERequiredController = TextEditingController();

@override
void lowNonHERequiredDispose() {
  lowNonHERequiredController.dispose();
}

final lowNonHEGapsController = TextEditingController();

@override
void lowNonHEGapsDispose() {
  lowNonHEGapsController.dispose();
}

//during hazarad
final lowDuringHeExistingController = TextEditingController();

@override
void lowDuringHeExistingDispose() {
  lowDuringHeExistingController.dispose();
}

final lowDuringHeRequiredController = TextEditingController();

@override
void lowDuringHeRequiredDispose() {
  lowDuringHeRequiredController.dispose();
}

final lowDuringHeGapsController = TextEditingController();

@override
void lowDuringHeGapsDispose() {
  lowDuringHeGapsController.dispose();
}

final nonHeExistLowDurController = TextEditingController();

@override
void nonHeExistLowDurDispose() {
  nonHeExistLowDurController.dispose();
}

final nonHeReqLowDurController = TextEditingController();

@override
void nonHeReqLowDurDispose() {
  nonHeReqLowDurController.dispose();
}

final nonHeGapsLowDurController = TextEditingController();

@override
void lowDuringNonHEGapsDispose() {
  nonHeGapsLowDurController.dispose();
}

final commReadyBefReq = TextEditingController();

@override
void commReadyBefReqDispose() {
  commReadyBefReq.dispose();
}

final commReadyBefGaps = TextEditingController();

@override
void commReadyBefGapsDispose() {
  commReadyBefGaps.dispose();
}

final commReadyDurReq = TextEditingController();

@override
void commReadyDurReqDispose() {
  commReadyDurReq.dispose();
}

final commReadyDurGaps = TextEditingController();

@override
void commReadyDurGapsDispose() {
  commReadyDurGaps.dispose();
}

//=========================================================
@override
class DropdownCapacity extends StatefulWidget {
  final List<String> items;
  DropdownCapacity({Key? key, required this.items}) : super(key: key);
  @override
  State<DropdownCapacity> createState() => _DropdownCapacityState();
}

class _DropdownCapacityState extends State<DropdownCapacity> {
  //String dropdownValue = prevention_list.first;
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Wrap the DropdownButton with a Flexible widget
      child: DropdownButton<String>(
        value: dropdownValue,
        isExpanded:
            true, // This will make the DropdownButton fill the available width
        itemHeight: 50.0,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: widget.items
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
            .toList(),
      ),
    );
  }
}

const List<String> prevention_list = <String>[
  "Air, Soil, and Groundwater Analysis",
  "Community Expertise",
  "Community leadership",
  "Early Warning System",
  "Emergency Communications",
  "Equipment and Personnel",
  "Evacuation Plan / Routes",
  "fire safety inspections",
  "Food and Drinking Water",
  "Forestry Commission",
  "Health Screenings",
  "Mobile Apps",
  "Neighborhood Networks",
  "Social Media communication",
  "State Agencies",
  "Technology (example: modeling software)",
  "OTHER"
];

const List<String> mitigation_list = <String>[
  "Air, Soil, and Groundwater Analysis"
      "Defensible space"
      "Ecosystem management and restoration"
      "Enforcement"
      "Fire Response"
      "First/Second Responders"
      "Generators"
      "Incident Command System"
      "Resilience Hubs"
      "Shelters"
      "Social Media communication"
      "State Agencies"
      "Technology (example: response apps)"
      "OTHER"
];

const List<String> element_at_risk = <String>[
  "Children",
  "Elderly",
  "Electric Supply center",
  "Essential Businesses",
  "fire stations",
  "Food Banks",
  "Hospitals and Clinics",
  "Linguistically Isolated",
  "Mail Services",
  "Pet Owners",
  "Pharmacies",
  "Places of Worship",
  "Schools",
  "State Agencies",
  "Superfund Sites / Hazardous Waste Sites",
  "Technology (example: internet access)",
  "Water Supply Center",
  "Wastewater Center",
  "OTHER"
];

const List<String> readiness_list = <String>[
  "Community Distaster Plan",
  "Community Engagement/Partnerships with stakeholders",
  "Disaster Preparedness Kit",
  "Industrial Protocols",
  "Insurance Options",
  "Military Affiliation",
  "National Incident Management System",
  "Places of Worship as shelters and resilience hubs",
  "Regulations",
  "State Agencies",
  "Training",
  "Transportation",
  "Food Resources",
  "Health and Medical Systems",
  "Infrastructure Maintenance",
  "OTHER"
];

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
        onPressed: () {
          //sending the data from the text controllers to the pdf handler
          capacityT.prevExist = prevExistingController.text;
          capacityT.prevReq = prevRequiredController.text;
          capacityT.prevGaps = prevGapsController.text;
          capacityT.mitiExist = mitExistingController.text;
          capacityT.mitiReq = mitRequiredController.text;
          capacityT.mitiGaps = mitGapsController.text;
          //highly vulnerable

          capacityT.heElement = highlyVulnElementController.text;
          capacityT.heReqHigh = highHumanRequiredController.text;
          capacityT.heExistHigh = highHumanExistingController.text;
          capacityT.heGapsHigh = highHumanGapsController.text;
          capacityT.nonHeExistHigh = highNonHumanRequiredController.text;
          capacityT.nonHeReqHigh = highNonHumanExistingController.text;
          capacityT.nonHeGapsHigh = highNonHumanGapsController.text;
          capacityT.heExistMed = medHumanExistingController.text;
          capacityT.heReqMed = medHumanRequiredController.text;
          capacityT.heGapsMed = medHumanGapsController.text;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewCapacity(capacityT: capacityT),
            ),
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
          Container(width: 50),
          //Prev table
          Table(children: [
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
          ]),
          Table(children: [
            TableRow(
              children: [
                Expanded(
                  child: PaddedText("Prevention"),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    width: 200, // Set the desired width for the dropdown menu
                    child: DropdownCapacity(items: prevention_list),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    width: 200, // Set the desired width for the dropdown menu
                    child: DropdownCapacity(items: prevention_list),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    width: 200, // Set the desired width for the dropdown menu
                    child: DropdownCapacity(items: prevention_list),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ]),
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
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: mitigation_list),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: mitigation_list),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: mitigation_list),
                    ),
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
                    child: PaddedText(
                        "Note: When carrying out survivability assessment"
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
              TableRow(children: [
                PaddedText("Highly Vulnerable: Survivability before hazard"),
              ]),
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
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: element_at_risk),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: element_at_risk),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: element_at_risk),
                    ),
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
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: element_at_risk),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: element_at_risk),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      width: 200, // Set the desired width for the dropdown menu
                      child: DropdownCapacity(items: element_at_risk),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          //Med Vuln Table
          Table(
            children: [
              TableRow(children: [
                PaddedText("Medium Vulnerable: Survivability during hazard"),
              ]),
            ],
          ),
          Table(children: [
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
                  child: TextField(
                    controller: medHumanExistingController,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: TextField(
                    controller: medHumanRequiredController,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: TextField(
                    controller: medHumanGapsController,
                  ),
                  flex: 1,
                ),
              ],
            ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Non-Human Element"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeExistMedController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeReqMedController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeGapsMedController,
            //           ),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // //Low Vuln Before Table
            // Table(
            //   children: [
            //     TableRow(children: [
            //       PaddedText("Low Vulnerable: Survivability before hazard"),
            //     ]),
            //   ],
            // ),
            // Table(
            //   children: [
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Element At Risk"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Existing"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Required"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Gaps"),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Human Element"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: heExistLowBefController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: heReqLowBefController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: heGapsLowBefController,
            //           ),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Non-Human Element"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeExistLowBefController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeReqLowBefController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeGapsLowBefController,
            //           ),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // //Low Vuln During Table

            // Table(
            //   children: [
            //     TableRow(children: [
            //       PaddedText("Low Vulnerable: Survivability during hazard"),
            //     ]),
            //   ],
            // ),
            // Table(
            //   children: [
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Element At Risk"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Existing"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Required"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Gaps"),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Human Element"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: heExistLowDurController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: heReqLowDurController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: heGapsLowDurController,
            //           ),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Non-Human Element"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeExistLowDurController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeReqLowDurController,
            //           ),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(
            //             controller: nonHeGapsLowDurController,
            //           ),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // Table(
            //   children: [
            //     TableRow(children: [
            //       PaddedText("Community Readiness: Before the hazard"),
            //     ]),
            //   ],
            // ),
            // //Comm Readiness Before Table
            // Table(
            //   children: [
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Existing"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Required"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Gaps"),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Institutions, systems\n"
            //               "(THE CIELO ProTEC)\n"
            //               "..."),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(controller: commReadyBefReqController),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(controller: commReadyBefGapsController),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // Table(
            //   children: [
            //     TableRow(children: [
            //       PaddedText("Community Readiness: During the hazard"),
            //     ]),
            //   ],
            // ),
            // //Comm Readiness During Table
            // Table(
            //   children: [
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Existing"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Required"),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: PaddedText("Gaps"),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         Expanded(
            //           child: PaddedText("Institutions, systems\n"
            //               "(THE CIELO ProTEC)\n"
            //               "..."),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(controller: commReadyDurReqController),
            //           flex: 1,
            //         ),
            //         Expanded(
            //           child: TextField(controller: commReadyDurGapsController),
            //           flex: 1,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // Table(children: [
            //   TableRow(
            //     children: [
            //       PaddedText("Existing Community Readiness:\n"
            //           "\n"
            //           "Institutions, systems\n"
            //           "(THE CIELO ProTEC)\n"
            //           "• Transportation\n"
            //           "• Health and medical services\n"
            //           "• Early warning\n"
            //           "• Communication\n"
            //           "• Internal response\n"
            //           "• Evacuation\n"
            //           "• Livelihoods\n"
            //           " Organizational development and governance\n"
            //           "• Provisions of food, water and securitv\n"
            //           "• Technology\n"
            //           "• Ecosystems management and restoration\n"
            //           "• Coordination and incident command system\n"),
            //     ],
          ]),
        ],
      ),
    );
  }
}
