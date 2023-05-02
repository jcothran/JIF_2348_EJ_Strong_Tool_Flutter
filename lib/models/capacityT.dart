import 'package:cloud_firestore/cloud_firestore.dart';

class CapacityT{
  final String name;
  String prevExist;
  String prevReq;
  String prevGaps;
  String mitiExist;
  String mitiReq;
  String mitiGaps;
  String heExistHigh;
  String heReqHigh;
  String heGapsHigh;
  String nonHeExistHigh;
  String nonHeReqHigh;
  String nonHeGapsHigh;
  String heExistMed;
  String heReqMed;
  String heGapsMed;
  String nonHeExistMed;
  String nonHeReqMed;
  String nonHeGapsMed;
  String heExistLowBef;
  String heReqLowBef;
  String heGapsLowBef;
  String nonHeExistLowBef;
  String nonHeReqLowBef;
  String nonHeGapsLowBef;
  String heExistLowDur;
  String heReqLowDur;
  String heGapsLowDur;
  String nonHeExistLowDur;
  String nonHeReqLowDur;
  String nonHeGapsLowDur;
  String commReadyBefReq;
  String commReadyBefGaps;
  String commReadyDurReq;
  String commReadyDurGaps;

  CapacityT({
    required this.name,
    required this.prevExist,
    required this.prevReq,
    required this.prevGaps,
    required this.mitiExist,
    required this.mitiReq,
    required this.mitiGaps,
    required this.heExistHigh,
    required this.heReqHigh,
    required this.heGapsHigh,
    required this.nonHeExistHigh,
    required this.nonHeReqHigh,
    required this.nonHeGapsHigh,
    required this.heExistMed,
    required this.heReqMed,
    required this.heGapsMed,
    required this.nonHeExistMed,
    required this.nonHeReqMed,
    required this.nonHeGapsMed,
    required this.heExistLowBef,
    required this.heReqLowBef,
    required this.heGapsLowBef,
    required this.nonHeExistLowBef,
    required this.nonHeReqLowBef,
    required this.nonHeGapsLowBef,
    required this.heExistLowDur,
    required this.heReqLowDur,
    required this.heGapsLowDur,
    required this.nonHeExistLowDur,
    required this.nonHeReqLowDur,
    required this.nonHeGapsLowDur,
    required this.commReadyBefReq,
    required this.commReadyBefGaps,
    required this.commReadyDurReq,
    required this.commReadyDurGaps,

  });

  static CapacityT convertCapacityDocument(DocumentSnapshot doc)
  {
    return CapacityT(
      name: '',
      prevExist: doc.get('prevExist'),
      prevReq: doc.get('prevReq'),
      prevGaps: doc.get('prevGaps'),
      mitiExist: doc.get('mitiExist'),
      mitiReq: doc.get('mitiReq'),
      mitiGaps: doc.get('mitiGaps'),
      heExistHigh: doc.get('heExistHigh'),
      heReqHigh: doc.get('heReqHigh'),
      heGapsHigh: doc.get('heGapsHigh'),
      nonHeExistHigh: doc.get('nonHeExistHigh'),
      nonHeReqHigh: doc.get('nonHeReqHigh'),
      nonHeGapsHigh: doc.get('nonHeGapsHigh'),
      heExistMed: doc.get('heExistMed'),
      heReqMed: doc.get('heReqMed'),
      heGapsMed: doc.get('heGapsMed'),
      nonHeExistMed: doc.get('nonHeExistMed'),
      nonHeReqMed: doc.get('nonHeReqMed'),
      nonHeGapsMed: doc.get('nonHeGapsMed'),
      heExistLowBef: doc.get('heExistLowBef'),
      heReqLowBef: doc.get('heReqLowBef'),
      heGapsLowBef: doc.get('heGapsLowBef'),
      nonHeExistLowBef: doc.get('nonHeExistLowBef'),
      nonHeReqLowBef: doc.get('nonHeReqLowBef'),
      nonHeGapsLowBef: doc.get('nonHeGapsLowBef'), 
      heExistLowDur: doc.get('heExistLowDur'),
      heReqLowDur: doc.get('heReqLowDur'),
      heGapsLowDur: doc.get('heGapsLowDur'),
      nonHeExistLowDur: doc.get('nonHeExistLowDur'),
      nonHeReqLowDur: doc.get('nonHeReqLowDur'),
      nonHeGapsLowDur: doc.get('nonHeGapsLowDur'),
      commReadyBefReq: doc.get('commReadyBefReq'),
      commReadyBefGaps: doc.get('commReadyBefGaps'),
      commReadyDurReq: doc.get('commReadyDurReq'),
      commReadyDurGaps: doc.get('commReadyDurGaps'));
  }
}