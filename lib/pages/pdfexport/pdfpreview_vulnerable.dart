import 'package:flutter/material.dart';
import 'package:makepdfs/models/vulnerableT.dart';
import 'package:printing/printing.dart';
import 'pdf/pdfexportVuln.dart';

class PdfPreviewVulnerablePage extends StatelessWidget {
  final VulnerableT vulnerableT;
  const PdfPreviewVulnerablePage({Key? key, required this.vulnerableT}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(build: (context) => makePdfVulnerable(vulnerableT),
      ),
    );
  }




}
