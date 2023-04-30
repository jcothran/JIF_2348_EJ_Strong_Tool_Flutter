import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';
import '../services/auth.dart';
import '../services/database.dart';
import 'location_date.dart';

final descController = TextEditingController();
final affectMeController = TextEditingController();
final affectCommunityController = TextEditingController();

class DropdownHandler extends StatefulWidget {
  // const DropdownHazard({super.key});
  final List<String> keywords;
  final String saved_value;      // this is the value we retrieve from the database (it is passed from edit forms)
  final bool use_previous_value;        // if we have come from the edit forms page this flag will be true and we use database values

  late _DropdownHandlerState state;

  DropdownHandler(this.saved_value, this.use_previous_value, this.keywords)
  {
    state = _DropdownHandlerState(saved_value, use_previous_value, keywords);
  }
  
  @override
  State<DropdownHandler> createState() => state;  // pass these values to the state class so that they can

  String get_value()
  {
    return state.dropdownValue;
  }
                                                                                            
}
class _DropdownHandlerState extends State<DropdownHandler> {
  final String saved_value;
  final List<String> keywords;
  bool use_previous_value;
  late String dropdownValue;

  _DropdownHandlerState(this.saved_value, this.use_previous_value, this.keywords)
  {
    dropdownValue = keywords.first;
  }

  @override
  Widget build(BuildContext context) {
    if (use_previous_value)
    {
      dropdownValue = saved_value;       // this sets the value in the dropdown to be the value from the db
      use_previous_value = false;               // this build function is called repeatedly, we set this value to false so the dropdown is only adjusted the first time
    }
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
        });
      },
      items: keywords.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

const List<String> force_keywords = <String>['Air Emissions','Air Movement',
  'Explosive', 'Flashfloods', 'King Tide', 'Water', 'Wind Movement', 'OTHER']; // keywords for the force dropdown
const List<String> origin_keywords = <String>['Accidental Fire',
  'Act of Negligence', 'Air emissions', 'Airborne Equipment Malfunction',
  'Burning Debris', 'climate change', 'Clogged Drains', 'Construction',
  'damaged dams or levees', 'deforestation', 'development and infrastructure',
  'Droughts', 'Electrical power', 'Fireworks', 'Heavy Rainfall', 'human-caused',
  'improper drainage system', 'Improper toxic disposal', 'Inaccurate Procedures',
  'Industrial Activity', 'Intentional (arson)', 'King Tide', 'Lack of Drains',
  'Leaching', 'Lightning', 'Oil Spill', 'overflow of rivers', 'Pot Holes',
  'thunderstorms', 'Uneven Roads', 'weather conditions', 'OTHER'];  // keywords for the origin dropdown
const List<String> warning_keywords = <String>['Accumulation of water',
  'Air Monitoring Alarm', 'Air Quality Notifictions',
  'Cannot foresee until it happens', 'Heavy Rain', 'Meter signs', 'Smoke',
  'Warning sirens from chemical plant', 'OTHER'];  // keywords for the warning dropdown
const List<String> forewarning_keywords = <String>['Seconds', 'Minutes',
  'Hours', 'Days', 'Weeks', 'Months', 'OTHER'];  // keywords for the origin dropdown
const List<String> speed_keywords = <String>['gradually', 'quickly', 'Rapid',
  'Slow', 'suddenly', 'OTHER'];  // keywords for the onset speed dropdown
const List<String> freq_keywords = <String>['episodic', 'everyday', 'frequent',
  'from time to time', 'hardly ever', 'not often', 'occasionally', 'often',
  'once in a while', 'periodically', 'rarely', 'recurring', 'scarcely',
  'seasonal', 'seldom', 'semi-occasionally', 'sometimes', 'sporadically',
  'varies', 'OTHER'];  // keywords for the frequency dropdown
const List<String> period_keywords = <String>['Afternoon hours', 'Anytime',
  'During commute', 'During industry/plant operation', 'Evening hours',
  'Everyday', 'Fall time', 'Morning hours', 'Random', 'Seasonal', 'Spring time',
  'Summer time', 'Throughout the day', 'Winter time', 'Year Round', 'OTHER'];  // keywords for the period dropdown
const List<String> duration_keywords = <String>['Annually', 'Days',
  'minutes to hours', 'Months', 'Seasonal', 'Throughout the entire year',
  'Varies', 'weeks', 'OTHER'];  // keywords for the duration dropdown

class HazardDetailPage extends StatelessWidget {
  final HazardT hazardT;
  final bool edit_file;
  const HazardDetailPage({
    Key? key,
    required this.hazardT,      // these are either the db values (edit) or the blanks (new)
    required this.edit_file,    // this tells the program that the file is being edited
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DropdownHandler origin = DropdownHandler(hazardT.origin, edit_file, origin_keywords);
    DropdownHandler force = DropdownHandler(hazardT.force, edit_file, force_keywords);
    DropdownHandler warning = DropdownHandler(hazardT.warning, edit_file, warning_keywords);
    DropdownHandler forewarning = DropdownHandler(hazardT.forewarning, edit_file, forewarning_keywords);
    DropdownHandler speed = DropdownHandler(hazardT.speed, edit_file, speed_keywords);
    DropdownHandler freq = DropdownHandler(hazardT.freq, edit_file, freq_keywords);
    DropdownHandler period= DropdownHandler(hazardT.period, edit_file, period_keywords);
    DropdownHandler duration = DropdownHandler(hazardT.duration, edit_file, duration_keywords);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //sending the data from the dropdowns to the pdf handler
          hazardT.origin = origin.get_value();
          hazardT.force = force.get_value();
          hazardT.warning = warning.get_value();
          hazardT.forewarning = forewarning.get_value();
          hazardT.speed = speed.get_value();
          hazardT.freq = freq.get_value();
          hazardT.period = period.get_value();
          hazardT.duration = duration.get_value();
          hazardT.desc = descController.text;
          hazardT.affectMe = affectMeController.text;
          hazardT.affectCommunity = affectCommunityController.text;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(hazardT: hazardT),
            ),
          );

          String location_date = LocationDatePage().getLocation() + " " + LocationDatePage().getDate() + " " + LocationDatePage.getUID();

          //update form in database
          await DatabaseService().updateHazardData(location_date, hazardT.origin,
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
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 7),
                      child: Text(
                        "Community Profile",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),

                   Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text(
                          'Elements of Hazard',
                          style: TextStyle(
                              fontSize: 16
                          ),
                      ),
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
                    child: origin,
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
                    child: force,
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
                    child: warning,
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
                    child: forewarning,
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
                    child: speed,
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
                    child: freq,
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
                    child: period,
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
                    child: duration,
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

