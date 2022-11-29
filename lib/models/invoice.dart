class HazardT {
  final String customer;
  final String name;
  final List<LineItem> items;
  HazardT({
    required this.customer,
    required this.items,
    required this.name,
  });
}


class LineItem {
  final String characteristics;
  final String elements;
  final String description;
  final String howAffectMe;
  final String howAffectCommunity;

  LineItem(this.characteristics, this.elements, this.description, this.howAffectMe,
      this.howAffectCommunity);
}
