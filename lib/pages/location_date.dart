
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makepdfs/services/auth.dart';
import 'forms.dart';
import 'edit_forms.dart';

//page for setting the location of the forms

String locationString = "";
String location = "";
String date = "";
String page_title = "Create a New Form";

class LocationDatePage extends StatefulWidget {
  State<LocationDatePage> createState() => LocationDatePageState(edit_file);

  late bool edit_file;
  LocationDatePage.filePass(this.edit_file);    // this constructor handles which form page to switch to (new or edit)
  LocationDatePage()                            // this constructor is used to access internal methods (oop is bad)
  {
    edit_file = false;
  }

  String getLocationString() {
    return locationString;
  }

  String getLocation() {
    return location;
  }

  String getDate() {
    return date;
  }

  static String getUID()
  {
    return AuthService().getUserId();
  }
}

@override
class LocationDatePageState extends State<LocationDatePage>{

  final TextEditingController stateController = TextEditingController();
  final TextEditingController countyController = TextEditingController();
  final TextEditingController mController = TextEditingController();
  final TextEditingController dController = TextEditingController();
  final TextEditingController yrController = TextEditingController();
  final bool edit_file;

  LocationDatePageState(this.edit_file);

  @override
  void dispose(){
    stateController.dispose();
    countyController.dispose();
    dController.dispose();
    mController.dispose();
    yrController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (edit_file)
      page_title = "Edit a Form";
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade600,
          title: Text(page_title),
        ),
        body: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 625,
                child: Column(
                  children: [
                    Spacer(),
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
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          SizedBox(
                            width: 52,
                            height: 110,
                            child: TextField(
                              maxLength: 2,
                              controller: stateController,
                              textAlign: TextAlign.center,
                              textCapitalization: TextCapitalization.characters,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'^[A-Z]+$')),
                              ],
                              decoration: InputDecoration(
                                hintText: 'ST',
                                border: OutlineInputBorder(),
                                counterText: "",
                                contentPadding: EdgeInsets.symmetric(horizontal: 14),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(7.0)),
                          SizedBox(
                            width: 135,
                            height: 110,
                            child: TextField(
                              controller: countyController,
                              textAlign: TextAlign.center,
                              textCapitalization: TextCapitalization.words,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'^[A-Za-z]+$')),
                              ],
                              decoration: InputDecoration(
                                hintText: 'Location',
                                border: OutlineInputBorder(),
                                counterText: "",
                                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(padding: EdgeInsets.all(15.0)),
                    Align(
                      alignment: Alignment(-.72, 0),
                      child: Text(
                        'Date:',
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(4.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 52,
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
                        Padding(padding: EdgeInsets.all(7.0)),
                        SizedBox(
                          width: 52,
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
                        Padding(padding: EdgeInsets.all(7.0)),
                        SizedBox(
                          width: 75,
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
                          child: const Text('Submit'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade600,
                            textStyle: TextStyle(fontSize: 17),
                            fixedSize: Size(130, 43),
                          ),
                          onPressed: () {
                            locationString = stateController.text + ' ' + countyController.text + ' County';
                            location = stateController.text + ' ' + countyController.text;                            
                            date = mController.text + '-' + dController.text + '-' + yrController.text;
                            if (edit_file)
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EditFormsPage()),
                              );
                            }
                            else
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FormsPage()),
                              );
                            }
                          },
                        ),
                        Spacer(),
                        // ElevatedButton(
                        //   child: const Text('Edit Form'),
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Colors.lightBlue.shade600,
                        //     textStyle: TextStyle(fontSize: 17),
                        //     fixedSize: Size(130, 43),
                        //   ),
                        //   onPressed: () {
                        //     locationString = stateController.text + ' ' + countyController.text + ' County';
                        //     location = stateController.text + ' ' + countyController.text;                            
                        //     date = mController.text + '-' + dController.text + '-' + yrController.text;

                        //   },
                        // ),
                        // Spacer(),                        
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
