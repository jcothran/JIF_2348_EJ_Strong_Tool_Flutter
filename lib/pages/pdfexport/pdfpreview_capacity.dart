import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:printing/printing.dart';
import 'pdf/pdfexportCap.dart';

class PdfPreviewCapacity extends StatefulWidget {
  final CapacityT capacityT;
  // Add a constructor to initialize capacityT
  //PdfPreviewCapacity({required this.capacityT});
  PdfPreviewCapacity({Key? key, required this.capacityT}) : super(key: key);

  @override
  PdfPreviewCapacityState createState() => PdfPreviewCapacityState();
}

class PdfPreviewCapacityState extends State<PdfPreviewCapacity> {
  // Your stateful logic goes here

  @override
  Widget build(BuildContext context) {
    // Your UI building logic goes here
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview Capacity'),
      ),
      body: Center(
        child:
            Text('This is an example of a StatefulWidget with build method.'),
      ),
    );
  }
}

// final communityReadinessList = [
//   'Transportation',
//   'Health and Medical Services',
//   'Early Warning',
//   'Communication',
//   'Internal Response',
//   'Evacuation',
//   'Livelihoods',
//   'Organizational Development & Governance',
//   'Provisions of Food, Water & Security',
//   'Technology',
//   'Ecosystems Management & Restoration',
//   'Coordination and Incident Command System',
// ];

// String defaultValue = 'Transportation';

// class PdfPreviewCapacityPage extends StatefulWidget {
//   final CapacityT capacityT;
//   const PdfPreviewCapacityPage({Key? key, required this.capacityT})
//       : super(key: key);

//   @override
//   PdfPreviewCapacityState createState() => PdfPreviewCapacityState();
// }

// class PdfPreviewCapacityState extends State<PdfPreviewCapacity> {
//   // Your stateful logic and widgets go here

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Preview'),
//       ),
//       body: PdfPreview(build: (context) => makePdfCapacity(capacityT)),
//       // body: Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       DropdownButton<String>(
//       //         // Initial Value
//       //         value: defaultValue,

//       //         // Down Arrow Icon
//       //         icon: const Icon(Icons.keyboard_arrow_down),

//       //         // Array list of items
//       //         items: communityReadinessList.map((String items) {
//       //           return DropdownMenuItem(
//       //             value: items,
//       //             child: Text(items),
//       //           );
//       //         }).toList(),
//       //         // After selecting the desired option,it will
//       //         // change button value to selected value
//       //         onChanged: (String? newValue) {
//       //           setState(() {
//       //             defaultValue = newValue!;
//       //           });
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
// //   void setState(Null Function() param0) {}
// // }
