import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';


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
        onPressed: () {
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
                    child: TextField(controller: originController,),
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

