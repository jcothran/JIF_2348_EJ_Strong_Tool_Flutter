import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';

import '../services/database.dart';
import 'location.dart';


final originController = TextEditingController();

@override
void originDispose() {
  // Clean up the controller when the widget is disposed.
  originController.dispose();
  //super.dispose();
}

final forceController = TextEditingController();

@override
void forceDispose() {
  // Clean up the controller when the widget is disposed.
  forceController.dispose();
  //super.dispose();
}

final warningController = TextEditingController();

@override
void warningDispose() {
  // Clean up the controller when the widget is disposed.
  warningController.dispose();
  //super.dispose();
}

final forewarningController = TextEditingController();

@override
void forewarningDispose() {
  // Clean up the controller when the widget is disposed.
  forewarningController.dispose();
  //super.dispose();
}

final speedController = TextEditingController();

@override
void speedDispose() {
  // Clean up the controller when the widget is disposed.
  speedController.dispose();
  //super.dispose();
}

final freqController = TextEditingController();

@override
void freqDispose() {
  // Clean up the controller when the widget is disposed.
  freqController.dispose();
  //super.dispose();
}

final periodController = TextEditingController();

@override
void periodDispose() {
  // Clean up the controller when the widget is disposed.
  periodController.dispose();
  //super.dispose();
}

final durationController = TextEditingController();

@override
void durationDispose() {
  // Clean up the controller when the widget is disposed.
  durationController.dispose();
  //super.dispose();
}

final descController = TextEditingController();

@override
void descDispose() {
  // Clean up the controller when the widget is disposed.
  descController.dispose();
  //super.dispose();
}

final affectMeController = TextEditingController();

@override
void affectMeDispose() {
  // Clean up the controller when the widget is disposed.
  affectMeController.dispose();
  //super.dispose();
}

final affectCommunityController = TextEditingController();

@override
void affectCommunityDispose() {
  // Clean up the controller when the widget is disposed.
  affectCommunityController.dispose();
  //super.dispose();
}

class DropdownHazard extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownHazard> createState() => _DropdownHazardState();
}

class _DropdownHazardState extends State<DropdownHazard> {
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

const List<String> origin_keywords = <String>['Accidental Fire', 'Act of Negligence', 'Air emissions', 'Airborne Equipment Malfunction', 'Burning Debris', 'climate change', 'Clogged Drains', 'Construction', 'damaged dams or levees', 'deforestation', 'development and infrastructure', 'Droughts', 'Electrical power', 'Fireworks', 'Heavy Rainfall', 'human-caused', 'improper drainage system', 'Improper toxic disposal', 'Inaccurate Procedures', 'Industrial Activity', 'Intentional (arson)', 'King Tide', 'Lack of Drains', 'Leaching', 'Lightning', 'Oil Spill', 'overflow of rivers', 'Pot Holes', 'thunderstorms', 'Uneven Roads', 'weather conditions', 'OTHER'];  // keywords for the origin dropdown
const List<String> warning_keywords = <String>['Accumulation of water', 'Air Monitoring Alarm', 'Air Quality Notifictions', 'Cannot foresee until it happens', 'Heavy Rain', 'Meter signs', 'Smoke', 'Warning sirens from chemical plant', 'OTHER'];  // keywords for the warning dropdown
const List<String> forewarning_keywords = <String>['Seconds', 'Minutes', 'Hours', 'Days', 'Weeks', 'Months', 'OTHER'];  // keywords for the origin dropdown
const List<String> onset_speed_keywords = <String>['gradually', 'quickly', 'Rapid', 'Slow', 'suddenly', 'OTHER'];  // keywords for the onset speed dropdown
const List<String> frequency_keywords = <String>['episodic', 'everyday', 'frequent', 'from time to time', 'hardly ever', 'not often', 'occasionally', 'often', 'once in a while', 'periodically', 'rarely', 'recurring', 'scarcely', 'seasonal', 'seldom', 'semi-occasionally', 'sometimes', 'sporadically', 'varies', 'OTHER'];  // keywords for the frequency dropdown
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
          hazardT.origin = originController.text;
          hazardT.force = forceController.text;
          hazardT.warning = warningController.text;
          hazardT.forewarning = forewarningController.text;
          hazardT.speed = speedController.text;
          hazardT.freq = freqController.text;
          hazardT.period = periodController.text;
          hazardT.duration = durationController.text;
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
                    child: DropdownHazard(),
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
                    child: TextField(controller: warningController,),
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
                    child: TextField(controller: forewarningController,),
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
                    child: TextField(controller: speedController,),
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
                    child: TextField(controller: freqController,),
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
                    child: TextField(controller: periodController,),
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
                    child: TextField(controller: durationController,),
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

