class Product {
  final String name;
  final String imageUrl;
  final String size;
  final String color;
  final double price;
  double pricetwo;
  int quantity;

  Product({
    required this.name,
    required this.imageUrl,
    required this.size,
    required this.color,
    required this.price,
    required this.quantity,
    required this.pricetwo
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      imageUrl: json['imageUrl'],
      size: json['size'],
      color: json['color'],
      price: json['price'].toDouble(),
      quantity: json['quantity'],
      pricetwo: json['price'].toDouble()
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'size': size,
      'color': color,
      'price': price,
      'quantity': quantity,
    };
  }
}
