class HazardT {
  final String name;
  final List<LineItem> items;
  HazardT({
    required this.items,
    required this.name,
  });
}


class LineItem {
  final String characteristics;
  final String elements;
  LineItem(this.characteristics, this.elements);
}
