import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makepdfs/models/invoice.dart';
import 'package:makepdfs/pages/detail.dart';

class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);

  final invoices = <HazardT>[
    HazardT(
        customer: 'HAF',
        items: [
          LineItem('Characteristics of Hazard', 'Elements of Hazard', 'Analytical description of hazard',
            'How will it affect me?', 'How will it affect my community?'),
          LineItem('Cause / Origin', 'Flood', ' ', ' ', ' '),
          LineItem('Force', 'Rough', ' ', ' ', ' '),
          LineItem('Warning Signs and signals', 'Weather Alerts', ' ', ' ', ' '),
          LineItem('Forewarning', 'Clouds', ' ', ' ', ' '),
          LineItem('Speed of onset', 'Fast', ' ', ' ', ' '),
          LineItem('Frequency', 'Whenever it rains really hard', ' ', ' ', ' '),
          LineItem('Period of occurence', 'However long it rains', ' ', ' ', ' '),
          LineItem('Duration', 'Three days', ' ', ' ', ' '),
        ],
        name: 'Hazard Assessment Form'),


    HazardT(
      customer: 'VAF',

      items: [

      ],
      name: 'Vulnerability Assessment Form',
    ),
    HazardT(
      name: 'Capacity Assessment Form',
      items: [

      ],
      customer: 'CAF',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: ListView(
        children: [
          ...invoices.map(
            (e) => ListTile(
              title: Text(e.name),
              subtitle: Text(e.customer),
              //trailing: Text('\$${e.totalCost().toStringAsFixed(2)}'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => DetailPage(hazardT: e),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
