FloatingActionButton

@ -0,0 +1,113 @@
import 'dart:typed_data';

import 'package:makepdfs/models/vulnerableT.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart' as material;

Future<Uint8List> makePdfCapacity(VulnerableT vulnerableT) async {
  final pdf = Document();
  final imageLogo = material.Image.memory(
      (await rootBundle.load('assets/dhec.png')).buffer.asUint8List());
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
  String? selectedValue;
  final material.TextEditingController textEditingController =
      material.TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(material.BuildContext context) {
    return Scaffold(
      body: Center(
        child: material.DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: Text(
              'Select Item',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
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
            buttonWidth: 200,
            itemHeight: 40,
            dropdownMaxHeight: 200,
            searchController: textEditingController,
            searchInnerWidget: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Search for an item...',
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return (item.value.toString().contains(searchValue));
            },
            //This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            },
          ),
        ),
      ),
    );
  }

  return pdf.save();
}