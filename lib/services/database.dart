import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService {

  final CollectionReference hazardDataColRef = FirebaseFirestore.instance
      .collection('hazard_form');
  final CollectionReference vulnerableDataColRef = FirebaseFirestore.instance
      .collection('vulnerability_form');
  final CollectionReference capacityDataColRef = FirebaseFirestore
      .instance.collection('capacity_form');
  final CollectionReference disasterDataColRef = FirebaseFirestore
      .instance.collection('disaster_form');

  Future updateHazardData(String name) async {
    /* String headers, String origin, String force,
     String warning, String forewarning, String speed, String freq, String period,
     String duration, String desc, String affectMe, String affectCommunity,) async { */
    return await hazardDataColRef.add({
      'name': name,
      //headers: '', origin: '', force: '', warning: '', forewarning: '', speed: '', freq: '', period: '', duration: '', desc: '', affectMe: '', affectCommunity: ''
    });
  }

  Future updateVulnerableData(String name) async {
    /* String headers, String origin, String force,
     String warning, String forewarning, String speed, String freq, String period,
     String duration, String desc, String affectMe, String affectCommunity,) async { */
    return await vulnerableDataColRef.add({
      'name': name,
    });
  }

  Future updateCapacityData(String name) async {
    /* String headers, String origin, String force,
     String warning, String forewarning, String speed, String freq, String period,
     String duration, String desc, String affectMe, String affectCommunity,) async { */
    return await capacityDataColRef.add({
      'name': name,
    });
  }

  Future updateDisasterData(String name) async {
    /* String headers, String origin, String force,
     String warning, String forewarning, String speed, String freq, String period,
     String duration, String desc, String affectMe, String affectCommunity,) async { */
    return await disasterDataColRef.add({
      'name': name,
    });
  }
}

