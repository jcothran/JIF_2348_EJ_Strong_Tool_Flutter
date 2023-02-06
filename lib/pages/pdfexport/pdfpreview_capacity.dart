import 'package:flutter/material.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:printing/printing.dart';
import 'pdf/pdfexportCap.dart';

class PdfPreviewCapacityPage extends StatelessWidget {
  final CapacityT capacityT;
  const PdfPreviewCapacityPage({Key? key, required this.capacityT}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(build: (context) => makePdfCapacity(capacityT),
      ),
    );
  }

}