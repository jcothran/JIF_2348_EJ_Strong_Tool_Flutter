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
    required this.affectCommunity,
  });
}


class LineItem {
  final String characteristics;
  String elements;
  LineItem(this.characteristics, this.elements);
}
