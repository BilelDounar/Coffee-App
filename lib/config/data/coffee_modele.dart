final List<String> coffee_type = [
  'Cappucino',
  'Espresso',
  'Latte',
  'Mocha',
  'Macchiato',
];

class CoffeeItem {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final double note;

  CoffeeItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.note,
  });
}

final List<CoffeeItem> coffeItemList = [
  CoffeeItem(
    name: 'Latte',
    description: 'with Vanilla',
    price: 4.49,
    imagePath: 'assets/images/basic/coffee_3.png',
    note: 2.9,
  ),
  CoffeeItem(
    name: 'Mocha',
    description: 'with Dark Chocolate',
    price: 4.99,
    imagePath: 'assets/images/basic/coffee_4.png',
    note: 1.8,
  ),
  CoffeeItem(
    name: 'Macchiato',
    description:
        'with Caramel bien gourmand parce que c\'est super bon faut se le dire!',
    price: 4.99,
    imagePath: 'assets/images/basic/coffee_2.png',
    note: 3.5,
  ),
  CoffeeItem(
    name: 'Cappuccino',
    description: 'with Chocolate',
    price: 3.99,
    imagePath: 'assets/images/basic/coffee_1.png',
    note: 3,
  ),
];
