
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'forms.dart';

//page for setting the location of the forms

String location = "";
String date = "";

class LocationDatePage extends StatefulWidget {
  State<LocationDatePage> createState() => LocationDatePageState();

  String getLocation() {
    return location;
  }

  String getDate() {
    return date;
  }
}

@override
class LocationDatePageState extends State<LocationDatePage>{

  final TextEditingController locController = TextEditingController();
  final TextEditingController mController = TextEditingController();
  final TextEditingController dController = TextEditingController();
  final TextEditingController yrController = TextEditingController();

  @override
  void dispose(){
    locController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade600,
          title: const Text("Location and Date"),
        ),
        body: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 700,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(25.0)),
                    const Image(
                      image: AssetImage('assets/world.png'),
                      height: 300,
                      width: 300,
                    ),
                    Padding(padding: EdgeInsets.all(17.0)),
                    Align(
                      alignment: Alignment(-.70, 0),
                      child: Text(
                        'Location:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300, minHeight: 50),
                      child: TextField(
                        controller: locController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("^[a-zA-Z\- ]*")),
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter location for the form',
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Align(
                      alignment: Alignment(-.72, 0),
                      child: Text(
                        'Date:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(45.0)),
                        SizedBox(
                          width: 55,
                          height: 75,
                          child: TextField(
                            maxLength: 2,
                            controller: mController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'MM',
                              counterText: "",
                              contentPadding: EdgeInsets.symmetric(horizontal: 12),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10.0)),
                        SizedBox(
                          width: 55,
                          height: 75,
                          child: TextField(
                            maxLength: 2,
                            controller: dController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'DD',
                              counterText: "",
                              contentPadding: EdgeInsets.symmetric(horizontal: 12),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10.0)),
                        SizedBox(
                          width: 65,
                          height: 75,
                          child: TextField(
                            maxLength: 4,
                            controller: yrController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              alignLabelWithHint: true,
                              hintText: 'YYYY',
                              counterText: "",
                              contentPadding: EdgeInsets.symmetric(horizontal: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Spacer(),
                        ElevatedButton(
                          child: const Text('New Form'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade600,
                            textStyle: TextStyle(fontSize: 17),
                            fixedSize: Size(130, 43),
                          ),
                          onPressed: () {
                            location = locController.text;
                            date = mController.text + '-' + dController.text + '-' + yrController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FormsPage()),
                            );
                          },
                        ),
                        Spacer(),

                        ElevatedButton(
                          child: const Text('Edit Form'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade600,
                            textStyle: TextStyle(fontSize: 17),
                            fixedSize: Size(130, 43),
                          ),
                          onPressed: () {
                            location = locController.text;
                            date = mController.text + '-' + dController.text + '-' + yrController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FormsPage()),
                            );
                          },
                        ),
                        Spacer(),                        
                      ],
                    ),
                 
                  ],
                ),
              ),
            )
        )
    );
  }
}
