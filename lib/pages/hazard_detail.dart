import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';

import '../services/database.dart';
import 'location.dart';

final forceController = TextEditingController();
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
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


const List<String> origin_keywords = <String>['Accidental Fire', 'Act of Negligence', 'Air emissions', 'Airborne Equipment Malfunction', 'Burning Debris', 'climate change', 'Clogged Drains', 'Construction', 'damaged dams or levees', 'deforestation', 'development and infrastructure', 'Droughts', 'Electrical power', 'Fireworks', 'Heavy Rainfall', 'human-caused', 'improper drainage system', 'Improper toxic disposal', 'Inaccurate Procedures', 'Industrial Activity', 'Intentional (arson)', 'King Tide', 'Lack of Drains', 'Leaching', 'Lightning', 'Oil Spill', 'overflow of rivers', 'Pot Holes', 'thunderstorms', 'Uneven Roads', 'weather conditions', 'OTHER'];  // keywords for the origin dropdown
const List<String> warning_keywords = <String>['Accumulation of water', 'Air Monitoring Alarm', 'Air Quality Notifictions', 'Cannot foresee until it happens', 'Heavy Rain', 'Meter signs', 'Smoke', 'Warning sirens from chemical plant', 'OTHER'];  // keywords for the warning dropdown
const List<String> forewarning_keywords = <String>['Seconds', 'Minutes', 'Hours', 'Days', 'Weeks', 'Months', 'OTHER'];  // keywords for the origin dropdown
const List<String> speed_keywords = <String>['gradually', 'quickly', 'Rapid', 'Slow', 'suddenly', 'OTHER'];  // keywords for the onset speed dropdown
const List<String> freq_keywords = <String>['episodic', 'everyday', 'frequent', 'from time to time', 'hardly ever', 'not often', 'occasionally', 'often', 'once in a while', 'periodically', 'rarely', 'recurring', 'scarcely', 'seasonal', 'seldom', 'semi-occasionally', 'sometimes', 'sporadically', 'varies', 'OTHER'];  // keywords for the frequency dropdown
const List<String> period_keywords = <String>['Afternoon hours', 'Anytime', 'During commute', 'During industry/plant operation', 'Evening hours', 'Everyday', 'Fall time', 'Morning hours', 'Random', 'Seasonal', 'Spring time', 'Summer time', 'Throughout the day', 'Winter time', 'Year Round', 'OTHER'];  // keywords for the period dropdown
const List<String> duration_keywords = <String>['Annually', 'Days', 'minutes to hours', 'Months', 'Seasonal', 'Throughout the entire year', 'Varies', 'weeks', 'OTHER'];  // keywords for the duration dropdown

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
          //sending the data from the text controllers to the pdf handler
          hazardT.origin = originDrop;
          hazardT.force = forceController.text;
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

          String location = LocationPage().getLocation();

          //update form in database
          await DatabaseService().updateHazardData(location, hazardT.origin,
              hazardT.force, hazardT.warning, hazardT.forewarning, hazardT.speed, hazardT.freq,
              hazardT.period, hazardT.duration, hazardT.desc, hazardT.affectMe, hazardT.affectCommunity
          );

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
                    child: TextField(controller: forceController,),
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
                    child: DropdownWarning(),
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
                    child: DropdownForewarning(),
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
                    child: DropdownSpeed(),
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
                    child: DropdownFreq(),
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
                    child: DropdownPeriod(),
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
                    child: DropdownDuration(),
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
                    child: TextField(controller: descController,),
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
                    child: TextField(controller: affectMeController,),
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
                    child: TextField(controller: affectCommunityController,),
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

