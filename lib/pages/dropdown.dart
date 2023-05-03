import 'package:flutter/material.dart';

class DropdownHandler extends StatefulWidget {
  // const DropdownHazard({super.key});
  final List<String> keywords;
  String saved_value;      // this is the value we retrieve from the database (it is passed from edit forms)
  bool use_previous_value;        // if we have come from the edit forms page this flag will be true and we use database values

  late _DropdownHandlerState state;

  DropdownHandler(this.saved_value, this.use_previous_value, this.keywords)
  {
    state = _DropdownHandlerState(saved_value, use_previous_value, keywords);
  }
  
  @override
  State<DropdownHandler> createState()
  {
    String new_value = this.state.dropdownValue;
    bool use_new_value = this.state.use_previous_value;
    state.dispose();
    return state = _DropdownHandlerState(new_value, use_new_value, keywords);
  }

  String get_value()
  {
    return state.dropdownValue;
  }
                                                                                            
}
class _DropdownHandlerState extends State<DropdownHandler> {
  String saved_value;
  final List<String> keywords;
  bool use_previous_value;
  late String dropdownValue;

  _DropdownHandlerState(this.saved_value, this.use_previous_value, this.keywords)
  {
    if (use_previous_value)
    {
      dropdownValue = saved_value;
    }
    else
    {
      dropdownValue = keywords.first;
    }      
  }

  @override
  Widget build(BuildContext context) {
    // if (use_previous_value)
    // {
    //   dropdownValue = saved_value;       // this sets the value in the dropdown to be the value from the db
    //   use_previous_value = false;               // this build function is called repeatedly, we set this value to false so the dropdown is only adjusted the first time
    // }
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
          use_previous_value = true;
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
