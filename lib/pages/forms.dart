import 'package:flutter/material.dart';
import 'package:makepdfs/models/hazardT.dart';
import 'package:makepdfs/models/vulnerableT.dart';
import 'package:makepdfs/models/capacityT.dart';
import 'package:makepdfs/models/disasterT.dart';
import 'package:makepdfs/pages/detail.dart';

class FormsPage extends StatelessWidget {
  FormsPage({Key? key}) : super(key: key);

  final forms= <HazardT>[
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
          ...forms.map(
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
