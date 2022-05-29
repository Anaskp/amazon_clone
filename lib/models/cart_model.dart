class CartModel {
  final String name;
  final String price;
  final String color;
  final String? sizeName;
  final String? styleName;
  final String img;
  int quantity;

  CartModel({
    required this.name,
    required this.price,
    required this.color,
    required this.img,
    this.sizeName,
    this.styleName,
    required this.quantity,
  });
}
