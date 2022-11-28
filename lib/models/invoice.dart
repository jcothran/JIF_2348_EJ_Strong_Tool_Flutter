class Invoice {
  final String customer;
  final String address;
  final String name;
  final List<LineItem> items;
  Invoice({
    required this.customer,
    required this.address,
    required this.items,
    required this.name,
  });

  double totalCost() {
    return items.fold(0, (previousValue, element) => previousValue + element.cost);
  }
}


class LineItem {
  final String characteristics;
  final String elements;
  final String description;
  final String howAffectMe;
  final String howAffectCommunity;
  final double cost;

  LineItem(this.characteristics, this.elements, this.description, this.howAffectMe,
      this.howAffectCommunity, this.cost);
}
