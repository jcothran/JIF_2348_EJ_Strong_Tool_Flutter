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
}