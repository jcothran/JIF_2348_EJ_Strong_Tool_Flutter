import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makepdfs/models/invoice.dart';
import 'package:makepdfs/pages/detail.dart';

class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);

  final invoices = <Invoice>[
    Invoice(
        customer: 'Hazard Assessment Form',
        address: '123 Fake St\r\nBermuda Triangle',
        items: [
          LineItem('Characteristics of Hazard', 'Elements of Hazard', 'Analytical description of hazard',
            'How will it affect me?', 'How will it affect my community?', 2),
          LineItem('Cause / Origin', 'Flood', ' ', ' ', ' ', 2),
          LineItem('Force', 'Rough', ' ', ' ', ' ', 2),
          LineItem('Warning Signs and signals', 'Weather Alerts', ' ', ' ', ' ', 2),
          LineItem('Forewarning', 'Clouds', ' ', ' ', ' ', 2),
          LineItem('Speed of onset', 'Fast', ' ', ' ', ' ', 2),
          LineItem('Frequency', 'Whenever it rains really hard', ' ', ' ', ' ', 2),
          LineItem('Period of occurence', 'However long it rains', ' ', ' ', ' ', 2),
          LineItem('Duration', 'Three days', ' ', ' ', ' ', 2),
        ],
        name: 'Hazard Assessment Form'),

    /*
    Invoice(
      customer: 'Michael Ambiguous',
      address: '82 Unsure St\r\nBaggle Palace',
      items: [
        LineItem('Professional Advice', 100),
        LineItem('Lunch Bill', 43.55),
        LineItem('Remote Assistance', 50),
      ],
      name: 'Provide remote support after lunch',
    ),
    Invoice(
      customer: 'Marty McDanceFace',
      address: '55 Dancing Parade\r\nDance Place',
      items: [
        LineItem('Program the robots', 400.50),
        LineItem('Find tasteful dance moves for the robots', 80.55),
        LineItem('General quality assurance', 80),
      ],
      name: 'Create software to teach robots how to dance',
    ) */
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
                    builder: (builder) => DetailPage(invoice: e),
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
