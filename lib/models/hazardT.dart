import 'package:cloud_firestore/cloud_firestore.dart';

class HazardT {
  final String name;
  String headers;
  String origin;
  String force;
  String warning;
  String forewarning;
  String speed;
  String freq;
  String period;
  String duration;
  String desc;
  String affectMe;
  String affectCommunity;

  HazardT({
    required this.name,
    required this.headers,
    required this.origin,
    required this.force,
    required this.warning,
    required this.forewarning,
    required this.speed,
    required this.freq,
    required this.period,
    required this.duration,
    required this.desc,
    required this.affectMe,
    required this.affectCommunity
  });

  static HazardT convertHazardDocument (DocumentSnapshot doc)
  { 
    return HazardT(
      name: '',
      headers: '',
      origin: doc.get('origin'),
      force: doc.get('force'),
      warning: doc.get('warning'),
      forewarning: doc.get('forewarning'),
      speed: doc.get('speed'),
      freq: doc.get('freq'),
      period: doc.get('period'),
      duration: doc.get('duration'),
      desc: doc.get('desc'),
      affectMe: doc.get('affectMe'),
      affectCommunity: doc.get('affectCommunity'));
  }
}
