class Shop {
  String? id_s;
  String? item;
  bool bought;

  Shop({
    required this.id_s,
    required this.item,
    this.bought = false,
  });

  static List<Shop> shoppingList() {
    return [
      Shop(id_s: '01', item: 'Eggs', bought: true),
      Shop(id_s: '02', item: 'Cheese'),
      Shop(id_s: '03', item: 'Chocolate'),
      Shop(id_s: '04', item: 'Pasta'),
      Shop(id_s: '05', item: 'Milk', bought: true),
    ];
  }
}
