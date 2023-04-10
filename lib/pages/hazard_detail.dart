import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';
import '../services/database.dart';
import 'location_date.dart';

final descController = TextEditingController();
final affectMeController = TextEditingController();
final affectCommunityController = TextEditingController();

class DropdownOrigin extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownOrigin> createState() => _DropdownOriginState();
}

String originDrop = origin_keywords.first;

class _DropdownOriginState extends State<DropdownOrigin> {
  String dropdownValue = origin_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          originDrop = dropdownValue;
        });
      },
      items: origin_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownWarning extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownWarning> createState() => _DropdownWarningState();
}

String warningDrop = warning_keywords.first;

class _DropdownWarningState extends State<DropdownWarning> {
  String dropdownValue = warning_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          warningDrop = dropdownValue;
        });
      },
      items: warning_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownForewarning extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownForewarning> createState() => _DropdownForewarningState();
}

String forewarningDrop = forewarning_keywords.first;

class _DropdownForewarningState extends State<DropdownForewarning> {
  String dropdownValue = forewarning_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          forewarningDrop = dropdownValue;
        });
      },
      items: forewarning_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownSpeed extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownSpeed> createState() => _DropdownSpeedState();
}

String speedDrop = speed_keywords.first;

class _DropdownSpeedState extends State<DropdownSpeed> {
  String dropdownValue = speed_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          speedDrop = dropdownValue;
        });
      },
      items: speed_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownFreq extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownFreq> createState() => _DropdownFreqState();
}

String freqDrop = freq_keywords.first;

class _DropdownFreqState extends State<DropdownFreq> {
  String dropdownValue = freq_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          freqDrop = dropdownValue;
        });
      },
      items: freq_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownPeriod extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownPeriod> createState() => _DropdownPeriodState();
}

String periodDrop = period_keywords.first;

class _DropdownPeriodState extends State<DropdownPeriod> {
  String dropdownValue = period_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          periodDrop = dropdownValue;
        });
      },
      items: period_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownDuration extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownDuration> createState() => _DropdownDurationState();
}

String durationDrop = duration_keywords.first;

class _DropdownDurationState extends State<DropdownDuration> {
  String dropdownValue = duration_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          durationDrop = dropdownValue;
        });
      },
      items: duration_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownForce extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownForce> createState() => _DropdownForceState();
}

String forceDrop = force_keywords.first;

class _DropdownForceState extends State<DropdownForce> {
  String dropdownValue = force_keywords.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: force_keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

const List<String> keyword_list = <String>[
  'Rapid',
  'Fast',
  'Example'
]; // list of keywords for the dropdown menus (may need different lists depending on type)

class HazardDetailPage extends StatelessWidget {
  final HazardT hazardT;
  const HazardDetailPage({
    Key? key,
    required this.hazardT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //sending the data from the dropdowns to the pdf handler
          hazardT.origin = originDrop;
          hazardT.force = forceDrop;
          hazardT.warning = warningDrop;
          hazardT.forewarning = forewarningDrop;
          hazardT.speed = speedDrop;
          hazardT.freq = freqDrop;
          hazardT.period = periodDrop;
          hazardT.duration = durationDrop;
          hazardT.desc = descController.text;
          hazardT.affectMe = affectMeController.text;
          hazardT.affectCommunity = affectCommunityController.text;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(hazardT: hazardT),
            ),
          );

          String location_date = LocationDatePage().getLocation() +
              "_" +
              LocationDatePage().getDate();

          //update form in database
          await DatabaseService().updateHazardData(
              location_date,
              hazardT.origin,
              hazardT.force,
              hazardT.warning,
              hazardT.forewarning,
              hazardT.speed,
              hazardT.freq,
              hazardT.period,
              hazardT.duration,
              hazardT.desc,
              hazardT.affectMe,
              hazardT.affectCommunity);

          // rootBundle.
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text(hazardT.name),
      ),
      body: ListView(
        children: [
          Container(height: 50),
          Table(
            //border: TableBorder.all(color: PdfColors.black),
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Characteristics of Hazard'),
                    flex: 3,
                  ),
                  Expanded(
                    child: PaddedText('Elements of Hazard'),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Cause/Origin'),
                    flex: 3,
                  ),
                  Expanded(
                    child: DropdownOrigin(),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Force'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: forceController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Warning Signs and Signals'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: warningController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Forewarning'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: forewarningController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Speed of Onset'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: speedController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Frequency'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: freqController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Period of Occurence'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: periodController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Duration'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: durationController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('Analytical description of the hazard:'),
                    flex: 3,
                  ),
                  Expanded(
                    child: TextField(
                      controller: descController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('How will it affect me?'),
                    flex: 2,
                  ),
                  Expanded(
                    child: TextField(
                      controller: affectMeController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText('How will it affect my community?'),
                    flex: 2,
                  ),
                  Expanded(
                    child: TextField(
                      controller: affectCommunityController,
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ],
          ),
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
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
