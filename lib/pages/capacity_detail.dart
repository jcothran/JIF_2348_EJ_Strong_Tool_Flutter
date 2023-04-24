import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/pages/hazard_detail.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview_capacity.dart';

import '../services/database.dart';
import 'location_date.dart';

//All the necessary text controllers
final prevExistController = TextEditingController();
final prevReqController = TextEditingController();
final prevGapsController = TextEditingController();
final mitiExistController = TextEditingController();
final mitiReqController = TextEditingController();
final mitiGapsController = TextEditingController();
final heExistHighController = TextEditingController();
final heReqHighController = TextEditingController();
final heGapsHighController = TextEditingController();
final nonHeExistHighController = TextEditingController();
final nonHeReqHighController = TextEditingController();
final nonHeGapsHighController = TextEditingController();
final heExistMedController = TextEditingController();
final heReqMedController = TextEditingController();
final heGapsMedController = TextEditingController();
final nonHeExistMedController = TextEditingController();
final nonHeReqMedController = TextEditingController();
final nonHeGapsMedController = TextEditingController();
final heExistLowBefController = TextEditingController();
final heReqLowBefController = TextEditingController();
final heGapsLowBefController = TextEditingController();
final nonHeExistLowBefController = TextEditingController();
final nonHeReqLowBefController = TextEditingController();
final nonHeGapsLowBefController = TextEditingController();
final heExistLowDurController = TextEditingController();
final heReqLowDurController = TextEditingController();
final heGapsLowDurController = TextEditingController();
final nonHeExistLowDurController = TextEditingController();
final nonHeReqLowDurController = TextEditingController();
final nonHeGapsLowDurController = TextEditingController();
final commReadyBefReqController = TextEditingController();
final commReadyBefGapsController = TextEditingController();
final commReadyDurReqController = TextEditingController();
final commReadyDurGapsController = TextEditingController();

@override
void disposeController(TextEditingController c) {
  // Clears the controller passed in after the widget is disposed
  c.dispose();
}

@override
class DropdownCapacity extends StatefulWidget {
  final List<String> items;
  const DropdownCapacity({Key? key, required this.items}) : super(key: key);
  @override
  State<DropdownCapacity> createState() => _DropdownCapacityState();
}

class _DropdownCapacityState extends State<DropdownCapacity> {
  //String dropdownValue = prevention_list.first;
  //String dropdownValue = '';
  String dropdownValue = prevention_list.first;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        isExpanded:
            true, // This will make the DropdownButton fill the available width
        itemHeight: 50.0,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 15,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: widget.items
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
            .toList(),
    );
  }
} //end _DropdownCapacityState


class DropdownReadiness1 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness1> createState() => _DropdownReadinessState1();
}
String readyDrop1 = readiness_list.first;
class _DropdownReadinessState1 extends State<DropdownReadiness1> {
  String dropdownValue = readiness_list.first;

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
          readyDrop1 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownReadiness2 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness2> createState() => _DropdownReadinessState2();
}
String readyDrop2 = readiness_list.first;
class _DropdownReadinessState2 extends State<DropdownReadiness2> {
  String dropdownValue = readiness_list.first;

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
          readyDrop2 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownReadiness3 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness3> createState() => _DropdownReadinessState3();
}
String readyDrop3 = readiness_list.first;
class _DropdownReadinessState3 extends State<DropdownReadiness3> {
  String dropdownValue = readiness_list.first;

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
          readyDrop3 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownReadiness4 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness4> createState() => _DropdownReadinessState4();
}
String readyDrop4 = readiness_list.first;
class _DropdownReadinessState4 extends State<DropdownReadiness4> {
  String dropdownValue = readiness_list.first;

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
          readyDrop4 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownReadiness5 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness5> createState() => _DropdownReadinessState5();
}
String readyDrop5 = readiness_list.first;
class _DropdownReadinessState5 extends State<DropdownReadiness5> {
  String dropdownValue = readiness_list.first;

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
          readyDrop5 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownReadiness6 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness6> createState() => _DropdownReadinessState6();
}
String readyDrop6 = readiness_list.first;
class _DropdownReadinessState6 extends State<DropdownReadiness6> {
  String dropdownValue = readiness_list.first;

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
          readyDrop6 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownReadiness7 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness7> createState() => _DropdownReadinessState7();
}
String readyDrop7 = readiness_list.first;
class _DropdownReadinessState7 extends State<DropdownReadiness7> {
  String dropdownValue = readiness_list.first;

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
          readyDrop7 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownReadiness8 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownReadiness8> createState() => _DropdownReadinessState8();
}
String readyDrop8 = readiness_list.first;
class _DropdownReadinessState8 extends State<DropdownReadiness8> {
  String dropdownValue = readiness_list.first;

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
          readyDrop8 = dropdownValue;
        });
      },
      items: readiness_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownPreventionEx extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownPreventionEx> createState() => _DropdownPreventionStateEx();
}
String prevDropEx = prevention_list.first;
class _DropdownPreventionStateEx extends State<DropdownPreventionEx> {
  String dropdownValue = prevention_list.first;

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
          prevDropEx = dropdownValue;
        });
      },
      items: prevention_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownPreventionRe extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownPreventionRe> createState() => _DropdownPreventionStateRe();
}
String prevDropRe = prevention_list.first;
class _DropdownPreventionStateRe extends State<DropdownPreventionRe> {
  String dropdownValue = prevention_list.first;

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
          prevDropRe = dropdownValue;
        });
      },
      items: prevention_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownPreventionGap extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownPreventionGap> createState() => _DropdownPreventionStateGap();
}
String prevDropGap = prevention_list.first;
class _DropdownPreventionStateGap extends State<DropdownPreventionGap> {
  String dropdownValue = prevention_list.first;

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
          prevDropGap = dropdownValue;
        });
      },
      items: prevention_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownMitigationEx extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  _DropdownMitigationExState createState() => _DropdownMitigationExState();
}
String mitiDropEx = mitigation_list.first;
class _DropdownMitigationExState extends State<DropdownMitigationEx> {
  String dropdownValue = mitigation_list.first;

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
          mitiDropEx = dropdownValue;
        });
      },
      items: mitigation_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownMitigationRe extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  _DropdownMitigationReState createState() => _DropdownMitigationReState();
}
String mitiDropRe = mitigation_list.first;
class _DropdownMitigationReState extends State<DropdownMitigationRe> {
  String dropdownValue = mitigation_list.first;

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
          mitiDropRe = dropdownValue;
        });
      },
      items: mitigation_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownMitigationGap extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  _DropdownMitigationGapState createState() => _DropdownMitigationGapState();
}
String mitiDropGap = mitigation_list.first;
class _DropdownMitigationGapState extends State<DropdownMitigationGap> {
  String dropdownValue = mitigation_list.first;

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
          mitiDropGap = dropdownValue;
        });
      },
      items: mitigation_list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropdownElementAtRisk1 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk1> createState() => _DropdownElementAtRiskState1();
}
String elementDrop1 = element_at_risk.first;
class _DropdownElementAtRiskState1 extends State<DropdownElementAtRisk1> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop1 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk2 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk2> createState() => _DropdownElementAtRiskState2();
}
String elementDrop2 = element_at_risk.first;
class _DropdownElementAtRiskState2 extends State<DropdownElementAtRisk2> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop2 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk3 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk3> createState() => _DropdownElementAtRiskState3();
}
String elementDrop3 = element_at_risk.first;
class _DropdownElementAtRiskState3 extends State<DropdownElementAtRisk3> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop3 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropdownElementAtRisk4 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk4> createState() => _DropdownElementAtRiskState4();
}
String elementDrop4 = element_at_risk.first;
class _DropdownElementAtRiskState4 extends State<DropdownElementAtRisk4> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop4 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropdownElementAtRisk5 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk5> createState() => _DropdownElementAtRiskState5();
}
String elementDrop5 = element_at_risk.first;
class _DropdownElementAtRiskState5 extends State<DropdownElementAtRisk5> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop5 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropdownElementAtRisk6 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk6> createState() => _DropdownElementAtRiskState6();
}
String elementDrop6 = element_at_risk.first;
class _DropdownElementAtRiskState6 extends State<DropdownElementAtRisk6> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop6 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropdownElementAtRisk7 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk7> createState() => _DropdownElementAtRiskState7();
}
String elementDrop7 = element_at_risk.first;
class _DropdownElementAtRiskState7 extends State<DropdownElementAtRisk7> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop7 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk8 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk8> createState() => _DropdownElementAtRiskState8();
}
String elementDrop8 = element_at_risk.first;
class _DropdownElementAtRiskState8 extends State<DropdownElementAtRisk8> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop8 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



class DropdownElementAtRisk9 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk9> createState() => _DropdownElementAtRiskState9();
}
String elementDrop9 = element_at_risk.first;
class _DropdownElementAtRiskState9 extends State<DropdownElementAtRisk9> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop9 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk10 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk10> createState() => _DropdownElementAtRiskState10();
}
String elementDrop10 = element_at_risk.first;
class _DropdownElementAtRiskState10 extends State<DropdownElementAtRisk10> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop10 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk11 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk11> createState() => _DropdownElementAtRiskState11();
}
String elementDrop11 = element_at_risk.first;
class _DropdownElementAtRiskState11 extends State<DropdownElementAtRisk11> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop11 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk12 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk12> createState() => _DropdownElementAtRiskState12();
}
String elementDrop12 = element_at_risk.first;
class _DropdownElementAtRiskState12 extends State<DropdownElementAtRisk12> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop12 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk13 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  _DropdownElementAtRiskState13 createState() => _DropdownElementAtRiskState13();
}
String elementDrop13 = element_at_risk.first;
class _DropdownElementAtRiskState13 extends State<DropdownElementAtRisk13> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop13 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk14 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk14> createState() => _DropdownElementAtRiskState14();
}
String elementDrop14 = element_at_risk.first;
class _DropdownElementAtRiskState14 extends State<DropdownElementAtRisk14> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop14 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk15 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk15> createState() => _DropdownElementAtRiskState15();
}
String elementDrop15 = element_at_risk.first;
class _DropdownElementAtRiskState15 extends State<DropdownElementAtRisk15> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop15 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk16 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk16> createState() => _DropdownElementAtRiskState16();
}
String elementDrop16 = element_at_risk.first;
class _DropdownElementAtRiskState16 extends State<DropdownElementAtRisk16> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop16 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk17 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk17> createState() => _DropdownElementAtRiskState17();
}
String elementDrop17 = element_at_risk.first;
class _DropdownElementAtRiskState17 extends State<DropdownElementAtRisk17> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop17 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk18 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk18> createState() => _DropdownElementAtRiskState18();
}
String elementDrop18 = element_at_risk.first;
class _DropdownElementAtRiskState18 extends State<DropdownElementAtRisk18> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop18 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk19 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk19> createState() => _DropdownElementAtRiskState19();
}
String elementDrop19 = element_at_risk.first;
class _DropdownElementAtRiskState19 extends State<DropdownElementAtRisk19> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop19 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk20 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk20> createState() => _DropdownElementAtRiskState20();
}
String elementDrop20 = element_at_risk.first;
class _DropdownElementAtRiskState20 extends State<DropdownElementAtRisk20> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop20 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk21 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk21> createState() => _DropdownElementAtRiskState21();
}
String elementDrop21 = element_at_risk.first;
class _DropdownElementAtRiskState21 extends State<DropdownElementAtRisk21> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop21 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk22 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk22> createState() => _DropdownElementAtRiskState22();
}
String elementDrop22 = element_at_risk.first;
class _DropdownElementAtRiskState22 extends State<DropdownElementAtRisk22> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop22 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk23 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk23> createState() => _DropdownElementAtRiskState23();
}
String elementDrop23 = element_at_risk.first;
class _DropdownElementAtRiskState23 extends State<DropdownElementAtRisk23> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop23 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownElementAtRisk24 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk24> createState() => _DropdownElementAtRiskState24();
}
String elementDrop24 = element_at_risk.first;
class _DropdownElementAtRiskState24 extends State<DropdownElementAtRisk24> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop24 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk25 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk25> createState() => _DropdownElementAtRiskState25();
}
String elementDrop25 = element_at_risk.first;
class _DropdownElementAtRiskState25 extends State<DropdownElementAtRisk25> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop25 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk26 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk26> createState() => _DropdownElementAtRiskState26();
}
String elementDrop26 = element_at_risk.first;
class _DropdownElementAtRiskState26 extends State<DropdownElementAtRisk26> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop26 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DropdownElementAtRisk27 extends StatefulWidget {
  // const DropdownHazard({super.key});

  @override
  State<DropdownElementAtRisk27> createState() => _DropdownElementAtRiskState27();
}
String elementDrop27 = element_at_risk.first;
class _DropdownElementAtRiskState27 extends State<DropdownElementAtRisk27> {
  String dropdownValue = element_at_risk.first;

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
          elementDrop27 = dropdownValue;
        });
      },
      items: element_at_risk.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class CapacityDetailPage extends StatelessWidget {
  final CapacityT capacityT;
  const CapacityDetailPage({
    Key? key,
    required this.capacityT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //sending the data from the text controllers to the pdf handler
          capacityT.prevExist = prevDropEx;
          capacityT.prevReq = prevDropRe;
          capacityT.prevGaps = prevDropGap;
          capacityT.mitiExist = mitiDropEx;
          capacityT.mitiReq = mitiDropRe;
          capacityT.mitiGaps = mitiDropGap;
          capacityT.heExistHigh = elementDrop1;
          capacityT.heReqHigh = elementDrop2;
          capacityT.heGapsHigh = elementDrop3;
          capacityT.nonHeExistHigh = elementDrop4;
          capacityT.nonHeReqHigh = elementDrop5;
          capacityT.nonHeGapsHigh = elementDrop6;
          capacityT.heExistMed = elementDrop7;
          capacityT.heReqMed = elementDrop8;
          capacityT.heGapsMed = elementDrop9;
          capacityT.nonHeExistMed = elementDrop10;
          capacityT.nonHeReqMed = elementDrop11;
          capacityT.nonHeGapsMed = elementDrop12;
          capacityT.heExistLowBef = elementDrop13;
          capacityT.heReqLowBef = elementDrop13;
          capacityT.heGapsLowBef = elementDrop14;
          capacityT.nonHeExistLowBef = elementDrop15;
          capacityT.nonHeReqLowBef = elementDrop16;
          capacityT.nonHeGapsLowBef = elementDrop17;
          capacityT.heExistLowDur = elementDrop18;
          capacityT.heReqLowDur = elementDrop19;
          capacityT.heGapsLowDur = elementDrop20;
          capacityT.nonHeExistLowDur = elementDrop21;
          capacityT.nonHeReqLowDur = elementDrop22;
          capacityT.nonHeGapsLowDur = elementDrop23;
          capacityT.nonHeExistLowBef = elementDrop24;
          capacityT.nonHeGapsLowBef = elementDrop25;
          capacityT.commReadyBefReq = readyDrop1;
          capacityT.commReadyBefGaps = readyDrop2;
          capacityT.commReadyDurReq = readyDrop3;
          capacityT.commReadyDurGaps = readyDrop4;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  PdfPreviewCapacityPage(capacityT: capacityT),
            ),
          );

          String location_date = LocationDatePage().getLocation() + " " + LocationDatePage().getDate() + " " + LocationDatePage.getUID();

          await DatabaseService().updateCapacityData(
            location_date,
            prevDropEx,
            prevDropRe,
            prevDropGap,
            mitiDropEx,
            mitiDropRe,
            mitiDropGap,
            elementDrop1,
            elementDrop2,
            elementDrop3,
            elementDrop4,
            elementDrop5,
            elementDrop6,
            elementDrop7,
            elementDrop8,
            elementDrop9,
            elementDrop10,
            elementDrop11,
            elementDrop12,
            elementDrop13,
            elementDrop13,
            elementDrop14,
            elementDrop15,
            elementDrop16,
            elementDrop17,
            elementDrop18,
            elementDrop19,
            elementDrop20,
            elementDrop21,
            elementDrop22,
            elementDrop23,
            elementDrop24,
            elementDrop25,
            readyDrop1,
            readyDrop2,
            //readyDrop3,
            //readyDrop4,
          );
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text(capacityT.name),
      ),
      body: ListView(
        children: [
          Container(height: 50),
          //Prev table
          Table(children: [
            TableRow(
              children: [
                Expanded(
                  child: PaddedText(""),
                  flex: 1,
                ),
                Expanded(
                  child: PaddedText("Existing"),
                  flex: 1,
                ),
                Expanded(
                  child: PaddedText("Required"),
                  flex: 1,
                ),
                Expanded(
                  child: PaddedText("Gaps"),
                  flex: 1,
                ),
              ],
            ),
          ]),
          Table(children: [
            TableRow(
              children: [
                Expanded(
                  child: PaddedText("Prevention"),
                  flex: 1,
                ),
                Expanded(
                  child: DropdownPreventionEx(),
                ),
                Expanded(
                  child: DropdownPreventionRe(),
                ),
                Expanded(
                  child: DropdownPreventionGap(),
                ),
              ],
            ),
          ]),
          //Mitigation table
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Mitigation"),
                  ),
                  Expanded(
                    child: DropdownMitigationEx(),
                  ),
                  Expanded(
                    child: DropdownMitigationRe(),
                  ),
                  Expanded(
                    child: DropdownMitigationGap(),
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText(
                        "Note: When carrying out survivability assessment"
                        "all elements at risk assessed for level of vulnerability during "
                        "the vulnerability assessment should be considered here"),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(children: [
                PaddedText("Highly Vulnerable: Survivability before hazard"),
              ]),
            ],
          ),
          //High Vulnerability Table
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Element At Risk"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk1(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk2(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk3(),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Non-Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk4(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk5(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk6(),
                  ),
                ],
              ),
            ],
          ),
          //Med Vulnerability Table
          Table(
            children: [
              TableRow(children: [
                PaddedText("Medium Vulnerable: Survivability during hazard"),
              ]),
            ],
          ),
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Element At Risk"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk7(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk8(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk9(),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Non-Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk10(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk11(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk12(),
                  ),
                ],
              ),
            ],
          ),
          //Low Vulnerability Before Table
          Table(
            children: [
              TableRow(children: [
                PaddedText("Low Vulnerable: Survivability before hazard"),
              ]),
            ],
          ),
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Element At Risk"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Element At Risk"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk13(),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk14(),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk15(),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Non-Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk16(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk17(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk18(),
                  ),
                ],
              ),
            ],
          ),
          //Low Vulnerability During Table

          Table(
            children: [
              TableRow(children: [
                PaddedText("Low Vulnerable: Survivability during hazard"),
              ]),
            ],
          ),

          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Element At Risk"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk19(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk21(),
                  ),
                  Expanded(
                    child: DropdownElementAtRisk22(),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Non-Human Element"),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk23(),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk24(),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownElementAtRisk25(),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(children: [
                PaddedText("Community Readiness: Before the hazard"),
              ]),
            ],
          ),
          //Comm Readiness Before Table
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Institutions, systems\n"
                        "(THE CIELO ProTEC)\n"
                        "..."
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownReadiness1(),
                    flex: 1,
                  ),
                  Expanded(
                    child: DropdownReadiness2(),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Table(
            children: [
              TableRow(children: [
                PaddedText("Community Readiness: During the hazard"),
              ]),
            ],
          ),
          //Comm Readiness During Table
          Table(
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: PaddedText("Existing"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Required"),
                    flex: 1,
                  ),
                  Expanded(
                    child: PaddedText("Gaps"),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
                PaddedText("Institutions, systems\n"
                  "(THE CIELO ProTEC)\n"
                  "..."
                ),
              Expanded(
                child: DropdownReadiness3(),
                flex: 1,
              ),
              Expanded(
                child: DropdownReadiness4(),
                flex: 1,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              '___________________',
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 11, top: 17),
            child: Text(
              "Institutions, systems\n"
                  "(THE CIELO ProTEC)\n"
                  "• Transportation\n"
                  "• Health and medical service\n"
                  "• Early warning\n"
                  "• Communication\n"
                  "• Internal response\n"
                  "• Evacuation\n"
                  "• Livelihoods\n"
                  "• Organizational development and governance\n"
                  "• Provisions of food water and securitv\n"
                  "• Technology\n"
                  "• Ecosystems management and"
                  "restoration\n"
                  "• Coordination and incident command"
                  "system",
                  style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}

const List<String> prevention_list = <String>[
  "Air, Soil, and Groundwater Analysis",
  "Community Expertise",
  "Community leadership",
  "Early Warning System",
  "Emergency Communications",
  "Equipment and Personnel",
  "Evacuation Plan / Routes",
  "fire safety inspections",
  "Food and Drinking Water",
  "Forestry Commission",
  "Health Screenings",
  "Mobile Apps",
  "Neighborhood Networks",
  "Social Media communication",
  "State Agencies",
  "Technology (example: modeling software)",
  "OTHER"
];

const List<String> mitigation_list = <String>[
  "Air, Soil, and Groundwater Analysis"
      "Defensible space"
      "Ecosystem management and restoration"
      "Enforcement"
      "Fire Response"
      "First/Second Responders"
      "Generators"
      "Incident Command System"
      "Resilience Hubs"
      "Shelters"
      "Social Media communication"
      "State Agencies"
      "Technology (example: response apps)"
      "OTHER"
];

const List<String> element_at_risk = <String>[
  "Children",
  "Elderly",
  "Electric Supply center",
  "Essential Businesses",
  "fire stations",
  "Food Banks",
  "Hospitals and Clinics",
  "Linguistically Isolated",
  "Mail Services",
  "Pet Owners",
  "Pharmacies",
  "Places of Worship",
  "Schools",
  "State Agencies",
  "Superfund Sites / Hazardous Waste Sites",
  "Technology (example: internet access)",
  "Water Supply Center",
  "Wastewater Center",
  "OTHER"
];

const List<String> readiness_list = <String>[
  "Community Distaster Plan",
  "Community Engagement/Partnerships with stakeholders",
  "Disaster Preparedness Kit",
  "Industrial Protocols",
  "Insurance Options",
  "Military Affiliation",
  "National Incident Management System",
  "Places of Worship as shelters and resilience hubs",
  "Regulations",
  "State Agencies",
  "Training",
  "Transportation",
  "Food Resources",
  "Health and Medical Systems",
  "Infrastructure Maintenance",
  "OTHER"
];
