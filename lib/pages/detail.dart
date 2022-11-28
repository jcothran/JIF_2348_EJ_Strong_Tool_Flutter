import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makepdfs/models/invoice.dart';
import 'package:makepdfs/pages/pdfexport/pdf/pdfexport.dart';
import 'package:makepdfs/pages/pdfexport/pdfpreview.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';


class DetailPage extends StatelessWidget {
  final Invoice invoice;
  const DetailPage({
    Key? key,
    required this.invoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(invoice: invoice),
            ),
          );
          // rootBundle.
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text(invoice.name),
      ),
      body: ListView(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Hazard Assessment Form"
                    //style: Theme.of(context).header1,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            /*
              SizedBox(
                height: 150,
                width: 150,
                child: Image(imageLogo),
              ) */
            ],
          ),
          Container(height: 50),
          Table(
            //border: TableBorder.all(color: PdfColors.black),
            children: [

              ...invoice.items.map(
                    (e) => TableRow(
                  children: [
                    Expanded(
                      child: PaddedText(e.characteristics),
                      flex: 3,
                    ),

                    Expanded(
                      child: PaddedText(e.elements),
                      flex: 2,
                    ),

                    Expanded(
                      child: PaddedText(e.description),
                      flex: 2,
                    ),

                    Expanded(
                      child: PaddedText(e.howAffectMe),
                      flex: 2,
                    ),

                    Expanded(
                      child: PaddedText(e.howAffectCommunity),
                      flex: 2,
                    )
                  ],
                ),
              )
            ],
          )



          /*
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Customer',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      invoice.customer,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Column(
                children: [
                  Text(
                    'Invoice Items',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  ...invoice.items.map(
                        (e) => ListTile(
                      title: Text(e.description),
                      trailing: Text(
                        e.cost.toStringAsFixed(2),
                      ),
                    ),
                  ),
                  DefaultTextStyle.merge(
                    style: Theme.of(context).textTheme.headline4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Total"),
                        Text(
                          invoice.totalCost().toStringAsFixed(2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

Widget PaddedText(
    final String text, {
      final TextAlign align = TextAlign.left,
    }) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
