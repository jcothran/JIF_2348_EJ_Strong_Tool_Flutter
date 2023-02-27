import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:printing/printing.dart';
import 'pdf/pdfexportCap.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class PdfPreviewCapacityPage extends StatefulWidget {
  final CapacityT capacityT;
  PdfPreviewCapacityPage({Key? key, required this.capacityT}) : super(key: key);

  @override
  _PdfPreviewCapacityPageState createState() => _PdfPreviewCapacityPageState();
}

class _PdfPreviewCapacityPageState extends State<PdfPreviewCapacityPage> {
  String? selectedValue;

  final List<String> communityReadinessList = [
    'Transportation',
    'Health and Medical Services',
    'Early Warning',
    'Communication',
    'Internal Response',
    'Evacuation',
    'Livelihoods',
    'Organizational Development & Governance',
    'Provisions of Food, Water & Security',
    'Technology',
    'Ecosystems Management & Restoration',
    'Coordination and Incident Command System',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            hint: Text(
              'Select Item',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: communityReadinessList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonHeight: 40,
            buttonWidth: 140,
            itemHeight: 40,
          ),
        ),
      ),
    );
  }
}
