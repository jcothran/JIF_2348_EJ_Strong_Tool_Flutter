
import 'package:flutter/material.dart';
import 'forms.dart';

//page for setting the location of the forms

String location = "";

class LocationPage extends StatefulWidget {
  State<LocationPage> createState() => LocationPageState();

  String getLocation() {
    return location;
  }
}

@override
class LocationPageState extends State<LocationPage>{

  final TextEditingController locController = TextEditingController();

  @override
  void dispose(){
    locController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade600,
          title: const Text("Location"),
        ),
        body: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 500,
                child: Column(
                  children: [
                    Spacer(),
                    const Image(
                      image: AssetImage('assets/world.png'),
                      height: 300,
                      width: 300,
                    ),
                    Padding(padding: EdgeInsets.all(32.0)),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        controller: locController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter location for the form',
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(12.0)),
                    ElevatedButton(
                      child: const Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue.shade600,
                        textStyle: TextStyle(fontSize: 17),
                        fixedSize: Size(130, 43),
                      ),
                      onPressed: () {
                        location = locController.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormsPage()),
                        );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
        )
    );
  }
}
