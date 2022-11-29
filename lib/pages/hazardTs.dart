import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/pages/detail.dart';

class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);

  final invoices = <HazardT>[
    HazardT(

        name: 'Hazard Assessment Form',
      headers: '',
      origin: '',
      force:  '',
      warning: '',
      forewarning: '',
      speed: '',
      freq: '',
      period: '',
      duration: '',
      desc: '',
      affectMe: '',
      affectCommunity: '',



    ),

    HazardT(
      headers: '',
      origin: '',
      force:  '',
      warning: '',
      forewarning: '',
      speed: '',
      freq: '',
      period: '',
      duration: '',
      desc: '',
      affectMe: '',
      affectCommunity: '',
      name: 'Vulnerability Assessment Form',
    ),
    HazardT(
      headers: '',
      origin: '',
      force:  '',
      warning: '',
      forewarning: '',
      speed: '',
      freq: '',
      period: '',
      duration: '',
      desc: '',
      affectMe: '',
      affectCommunity: '',
      name: 'Capacity Assessment Form',

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
