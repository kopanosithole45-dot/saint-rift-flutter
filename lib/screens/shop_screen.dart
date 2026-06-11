import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  String selectedCategory = 'all';

  final List<Product> allProducts = [
    // Hoodies
    Product(
      id: 1,
      name: 'Classic Black Hoodie',
      category: 'hoodies',
      price: 89.99,
      description: 'Premium comfort hoodie for street style',
      image: 'assets/images/hoodie1.png',
    ),
    Product(
      id: 4,
      name: 'Monochrome Hoodie',
      category: 'hoodies',
      price: 94.99,
      description: 'Minimalist design hoodie',
      image: 'assets/images/hoodie2.png',
    ),
    Product(
      id: 7,
      name: 'Tech Hoodie',
      category: 'hoodies',
      price: 109.99,
      description: 'High-tech fabric hoodie',
      image: 'assets/images/hoodie3.png',
    ),
    // Shirts
    Product(
      id: 2,
      name: 'Oversized Graphic Shirt',
      category: 'shirts',
      price: 49.99,
      description: 'Bold graphic design on premium cotton',
      image: 'assets/images/shirt1.png',
    ),
    Product(
      id: 5,
      name: 'Vintage Band Shirt',
      category: 'shirts',
      price: 54.99,
      description: 'Classic vintage style band shirt',
      image: 'assets/images/shirt2.png',
    ),
    Product(
      id: 8,
      name: 'Streetwear Logo Shirt',
      category: 'shirts',
      price: 59.99,
      description: 'Premium embroidered logo shirt',
      image: 'assets/images/shirt3.png',
    ),
    // Jackets
    Product(
      id: 3,
      name: 'Leather Bomber Jacket',
      category: 'jackets',
      price: 199.99,
      description: 'Premium leather streetwear jacket',
      image: 'assets/images/jacket1.png',
    ),
    Product(
      id: 6,
      name: 'Denim Jacket',
      category: 'jackets',
      price: 129.99,
      description: 'Classic denim jacket with style',
      image: 'assets/images/jacket2.png',
    ),
    Product(
      id: 9,
      name: 'Puffer Jacket',
      category: 'jackets',
      price: 159.99,
      description: 'Winter essential puffer jacket',
      image: 'assets/images/jacket3.png',
    ),
  ];

  List<Product> get filteredProducts {
    if (selectedCategory == 'all') {
      return allProducts;
    }
    return allProducts
        .where((p) => p.category == selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SHOP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Column(
        children: [
          // Category Filter
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildCategoryButton('all', 'ALL'),
                _buildCategoryButton('hoodies', 'HOODIES'),
                _buildCategoryButton('shirts', 'SHIRTS'),
                _buildCategoryButton('jackets', 'JACKETS'),
              ],
            ),
          ),
          // Products Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: filteredProducts[index],
                    onTap: () {},
                    onAddToCart: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${filteredProducts[index].name} added to cart',
                          ),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String category, String label) {
    final isSelected = selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = category;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.grey.shade900,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected ? Colors.white : Colors.grey.shade700,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}