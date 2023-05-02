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
    DropdownHandler prevReq= DropdownHandler(capacityT.prevReq, edit_file, prevention_list);
    DropdownHandler prevGaps= DropdownHandler(capacityT.prevGaps, edit_file, prevention_list);

    DropdownHandler mitiExist = DropdownHandler(capacityT.mitiExist, edit_file, prevention_list);
    DropdownHandler mitiReq = DropdownHandler(capacityT.mitiReq, edit_file, prevention_list);
    DropdownHandler mitiGaps = DropdownHandler(capacityT.mitiGaps, edit_file, prevention_list);

    DropdownHandler heExistHigh = DropdownHandler(capacityT.heExistHigh, edit_file, element_at_risk);
    DropdownHandler heReqHigh = DropdownHandler(capacityT.heReqHigh, edit_file, element_at_risk);
    DropdownHandler heGapsHigh = DropdownHandler(capacityT.heGapsHigh, edit_file, element_at_risk);

    DropdownHandler nonHeExistHigh = DropdownHandler(capacityT.nonHeExistHigh, edit_file, element_at_risk);
    DropdownHandler nonHeReqHigh = DropdownHandler(capacityT.nonHeReqHigh, edit_file, element_at_risk);
    DropdownHandler nonHeGapsHigh = DropdownHandler(capacityT.nonHeGapsHigh, edit_file, element_at_risk);

    DropdownHandler heExistMed = DropdownHandler(capacityT.heExistMed, edit_file, element_at_risk);
    DropdownHandler heReqMed = DropdownHandler(capacityT.heReqMed, edit_file, element_at_risk);
    DropdownHandler heGapsMed = DropdownHandler(capacityT.heGapsMed, edit_file, element_at_risk);

    DropdownHandler nonHeExistMed = DropdownHandler(capacityT.nonHeExistMed, edit_file, element_at_risk);
    DropdownHandler nonHeReqMed = DropdownHandler(capacityT.nonHeReqMed, edit_file, element_at_risk);
    DropdownHandler nonHeGapsMed = DropdownHandler(capacityT.nonHeGapsMed, edit_file, element_at_risk);

    DropdownHandler heExistLowBef = DropdownHandler(capacityT.heExistLowBef, edit_file, element_at_risk);
    DropdownHandler heReqLowBef = DropdownHandler(capacityT.heReqLowBef, edit_file, element_at_risk);
    DropdownHandler heGapsLowBef = DropdownHandler(capacityT.heGapsLowBef, edit_file, element_at_risk);

    DropdownHandler nonHeExistLowBef = DropdownHandler(capacityT.nonHeExistLowBef, edit_file, element_at_risk);
    DropdownHandler nonHeReqLowBef = DropdownHandler(capacityT.nonHeReqLowBef, edit_file, element_at_risk);
    DropdownHandler nonHeGapsLowBef = DropdownHandler(capacityT.nonHeGapsLowBef, edit_file, element_at_risk);    

    DropdownHandler heExistLowDur = DropdownHandler(capacityT.heExistLowDur, edit_file, element_at_risk);
    DropdownHandler heReqLowDur = DropdownHandler(capacityT.heReqLowDur, edit_file, element_at_risk);
    DropdownHandler heGapsLowDur = DropdownHandler(capacityT.heGapsLowDur, edit_file, element_at_risk);

    DropdownHandler nonHeExistLowDur = DropdownHandler(capacityT.nonHeExistLowDur, edit_file, element_at_risk);
    DropdownHandler nonHeReqLowDur = DropdownHandler(capacityT.nonHeReqLowDur, edit_file, element_at_risk);
    DropdownHandler nonHeGapsLowDur = DropdownHandler(capacityT.nonHeGapsLowDur, edit_file, element_at_risk);

    DropdownHandler commReadyBefReq = DropdownHandler(capacityT.commReadyBefReq, edit_file, readiness_list);
    DropdownHandler commReadyBefGaps = DropdownHandler(capacityT.commReadyBefGaps, edit_file, readiness_list);

    DropdownHandler commReadyDurReq = DropdownHandler(capacityT.commReadyDurReq, edit_file, readiness_list);
    DropdownHandler commReadyDurGaps =  DropdownHandler(capacityT.commReadyDurGaps, edit_file, readiness_list);             

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //sending the data from the text controllers to the pdf handler
          capacityT.prevExist = prevExist.get_value();
          capacityT.prevReq = prevReq.get_value();
          capacityT.prevGaps = prevGaps.get_value();
          capacityT.mitiExist = mitiExist.get_value();
          capacityT.mitiReq = mitiReq.get_value();
          capacityT.mitiGaps = mitiGaps.get_value();
          capacityT.heExistHigh = heExistHigh.get_value();
          capacityT.heReqHigh = heReqHigh.get_value();
          capacityT.heGapsHigh = heGapsHigh.get_value();
          capacityT.nonHeExistHigh = nonHeExistHigh.get_value();
          capacityT.nonHeReqHigh = nonHeReqHigh.get_value();
          capacityT.nonHeGapsHigh = nonHeGapsHigh.get_value();
          capacityT.heExistMed = heExistMed.get_value();
          capacityT.heReqMed = heReqMed.get_value();
          capacityT.heGapsMed = heGapsMed.get_value();
          capacityT.nonHeExistMed = nonHeExistMed.get_value();
          capacityT.nonHeReqMed = nonHeReqMed.get_value();
          capacityT.nonHeGapsMed = nonHeGapsMed.get_value();
          capacityT.heExistLowBef = heExistLowBef.get_value();
          capacityT.heReqLowBef = heReqLowBef.get_value();
          capacityT.heGapsLowBef = heGapsLowBef.get_value();
          capacityT.nonHeExistLowBef = nonHeExistLowBef.get_value();
          capacityT.nonHeReqLowBef = nonHeReqLowBef.get_value();
          capacityT.nonHeGapsLowBef = nonHeGapsLowBef.get_value();
          capacityT.heExistLowDur = heExistLowDur.get_value();
          capacityT.heReqLowDur = heReqLowDur.get_value();
          capacityT.heGapsLowDur = heGapsLowDur.get_value();
          capacityT.nonHeExistLowDur = nonHeExistLowDur.get_value();
          capacityT.nonHeReqLowDur = nonHeReqLowDur.get_value();
          capacityT.nonHeGapsLowDur = nonHeGapsLowDur.get_value();
          capacityT.commReadyBefReq = commReadyBefReq.get_value();
          capacityT.commReadyBefGaps = commReadyBefGaps.get_value();
          capacityT.commReadyDurReq = commReadyDurReq.get_value();
          capacityT.commReadyDurGaps = commReadyDurGaps.get_value();

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
                  child: prevExist,
                ),
                Expanded(
                  child: prevReq,
                ),
                Expanded(
                  child: prevGaps,
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
                    child: mitiExist,
                  ),
                  Expanded(
                    child: mitiReq,
                  ),
                  Expanded(
                    child: mitiReq,
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
                    child: heExistHigh,
                  ),
                  Expanded(
                    child: heReqHigh,
                  ),
                  Expanded(
                    child: heGapsHigh,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: nonHeExistHigh,
                  ),
                  Expanded(
                    child: nonHeReqHigh,
                  ),
                  Expanded(
                    child: nonHeGapsHigh,
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
                    child: heExistMed,
                  ),
                  Expanded(
                    child: heReqMed,
                  ),
                  Expanded(
                    child: heGapsMed,
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
                    child: nonHeExistMed,
                  ),
                  Expanded(
                    child: nonHeReqMed,
                  ),
                  Expanded(
                    child: nonHeGapsMed,
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
                    child: heExistLowBef,
                  ),
                  Expanded(
                    child: heReqLowBef,
                  ),
                  Expanded(
                    child: heGapsLowBef,
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
                    child: nonHeExistLowBef,
                  ),
                  Expanded(
                    child: nonHeReqLowBef,
                  ),
                  Expanded(
                    child: nonHeGapsLowBef,
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
                    child: heExistLowDur,
                    flex: 1,
                  ),
                  Expanded(
                    child: heReqLowDur,
                    flex: 1,
                  ),
                  Expanded(
                    child: heGapsLowDur,
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
                    child: nonHeExistLowDur,
                    flex: 1,
                  ),
                  Expanded(
                    child: nonHeReqLowDur,
                    flex: 1,
                  ),
                  Expanded(
                    child: nonHeGapsLowDur,
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
                    child: commReadyBefReq,
                    flex: 1,
                  ),
                  Expanded(
                    child: commReadyBefGaps,
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
                    child: commReadyDurReq,
                    flex: 1,
                  ),
                  Expanded(
                    child: commReadyDurGaps,
                    flex: 1,
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
