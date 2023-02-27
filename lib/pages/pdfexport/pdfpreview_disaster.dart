
import 'package:flutter/material.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/pdfexport/pdf/pdfexportDisast.dart';
import 'package:printing/printing.dart';


class PdfPreviewDisasterPage extends StatelessWidget {
  final DisasterT disasterT;
  const PdfPreviewDisasterPage({Key? key, required this.disasterT}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(build: (context) => makePdfDisaster(disasterT),
      ),
    );
  }




}