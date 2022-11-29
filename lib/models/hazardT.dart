class HazardT {
  final String name;
  List<LineItem> items;
  HazardT({
    required this.items,
    required this.name,
  });
}


class LineItem {
  final String characteristics;
  String elements;
  LineItem(this.characteristics, this.elements);
}
