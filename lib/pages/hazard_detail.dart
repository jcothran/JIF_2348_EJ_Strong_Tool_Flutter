import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';
import '../services/database.dart';
import 'location_date.dart';
import 'dropdown.dart';

final descController = TextEditingController();
final affectMeController = TextEditingController();
final affectCommunityController = TextEditingController();

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

    if (edit_file)
    {
      descController.text = hazardT.desc;
      affectMeController.text = hazardT.affectMe;
      affectCommunityController.text = hazardT.affectCommunity;
    }
    else 
    {
      descController.text = '';
      affectMeController.text = '';
      affectCommunityController.text = '';
    }
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
                  PaddedText('Cause/Origin'),
                  origin,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Force'),
                  force,                
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Warning Signs and Signals'),
                  warning,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Forewarning'),
                  forewarning,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Speed of Onset'),
                  speed,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Frequency'),
                  freq,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Period of Occurence'),
                  period,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Duration'),
                  duration,
                ],
              ),

              TableRow(
                children: [
                  PaddedText('Analytical description of the hazard:'),
                  TextField(controller: descController,),
                ],
              ),

              TableRow(
                children: [
                  PaddedText('How will it affect me?'),
                  TextField(controller: affectMeController,),
                ],
              ),

              TableRow(
                children: [
                  PaddedText('How will it affect my community?'),
                  TextField(controller: affectCommunityController,),
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

