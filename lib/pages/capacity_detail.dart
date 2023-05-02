import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_capacity.dart';
import 'dropdown.dart';
import '../services/database.dart';
import 'location_date.dart';



class CapacityDetailPage extends StatelessWidget {
  final CapacityT capacityT;
  final bool edit_file;
  const CapacityDetailPage({
    Key? key,
    required this.capacityT,
    required this.edit_file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DropdownHandler prevExist = DropdownHandler(capacityT.prevExist, edit_file, prevention_list);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //sending the data from the text controllers to the pdf handler
          capacityT.prevExist = prevExist.get_value();
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

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  PdfPreviewCapacityPage(capacityT: capacityT),
            ),
          );

          String location_date = LocationDatePage().getLocation() + " " + LocationDatePage().getDate() + " " + LocationDatePage.getUID();

          await DatabaseService().updateCapacityData(
            location_date,
            capacityT.prevExist,
            capacityT.prevReq,
            capacityT.prevGaps,
            capacityT.mitiExist,
            capacityT.mitiReq,
            capacityT.mitiGaps,
            capacityT.heExistHigh,
            capacityT.heReqHigh,
            capacityT.heGapsHigh,
            capacityT.nonHeExistHigh,
            capacityT.nonHeReqHigh,
            capacityT.nonHeGapsHigh,
            capacityT.heExistMed,
            capacityT.heReqMed,
            capacityT.heGapsMed,
            capacityT.nonHeExistMed,
            capacityT.nonHeReqMed,
            capacityT.nonHeGapsMed,
            capacityT.heExistLowBef,
            capacityT.heReqLowBef,
            capacityT.heGapsLowBef,
            capacityT.nonHeExistLowBef,
            capacityT.nonHeReqLowBef,
            capacityT.nonHeGapsLowBef,
            capacityT.heExistLowDur,
            capacityT.heReqLowDur,
            capacityT.heGapsLowDur,
            capacityT.nonHeExistLowDur,
            capacityT.nonHeReqLowDur,
            capacityT.nonHeGapsLowDur,
            capacityT.commReadyBefReq,
            capacityT.commReadyBefGaps,
            capacityT.commReadyDurReq,
            capacityT.commReadyDurGaps,
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
                  child: DropdownCapacity(items: prevention_list),
                ),
                Expanded(
                  child: DropdownCapacity(items: prevention_list),
                ),
                Expanded(
                  child: DropdownCapacity(items: prevention_list),
                ),
              ],
            ),
          ]),
          //Mitigation table
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Mitigation"),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: mitigation_list),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: mitigation_list),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: mitigation_list),
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
                        "all elements at risk assessed for level of vulnerability during "
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
          //High Vulnerability Table
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
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                ],
              ),
            ],
          ),
          //Med Vulnerability Table
          Table(
            children: [
              TableRow(children: [
                PaddedText("Medium Vulnerable: Survivability during hazard"),
              ]),
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
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
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
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                ],
              ),
            ],
          ),
          //Low Vulnerability Before Table
          Table(
            children: [
              TableRow(children: [
                PaddedText("Low Vulnerable: Survivability before hazard"),
              ]),
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
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
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
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
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
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                ],
              ),
            ],
          ),
          //Low Vulnerability During Table

          Table(
            children: [
              TableRow(children: [
                PaddedText("Low Vulnerable: Survivability during hazard"),
              ]),
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
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
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
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(children: [
                PaddedText("Community Readiness: Before the hazard"),
              ]),
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
                    child: DropdownCapacity(items: readiness_list),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: readiness_list),
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
                    child: DropdownCapacity(items: readiness_list),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownCapacity(items: readiness_list),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(children: [
                PaddedText("Community Readiness: During the hazard"),
              ]),
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
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                  Expanded(
                    child: DropdownCapacity(items: element_at_risk),
                  ),
                ],
              ),
            ],
          ),
          Table(children: [
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
          ]),
        ],
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
