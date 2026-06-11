class Product {
  final int id;
  final String name;
  final String category; // 'hoodies', 'shirts', 'jackets'
  final double price;
  final String description;
  final String image;
  final int quantity;
  final List<String> sizes;
  final List<String> colors;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
    this.quantity = 0,
    this.sizes = const ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
    this.colors = const ['Black', 'White', 'Grey', 'Navy'],
  });

  Product copyWith({
    int? id,
    String? name,
    String? category,
    double? price,
    String? description,
    String? image,
    int? quantity,
    List<String>? sizes,
    List<String>? colors,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      description: description ?? this.description,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
    );
  }
}