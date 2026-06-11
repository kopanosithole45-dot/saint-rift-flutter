import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> featuredProducts = [
    Product(
      id: 1,
      name: 'Classic Black Hoodie',
      category: 'hoodies',
      price: 89.99,
      description: 'Premium comfort hoodie for street style',
      image: 'assets/images/hoodie1.png',
    ),
    Product(
      id: 2,
      name: 'Oversized Graphic Shirt',
      category: 'shirts',
      price: 49.99,
      description: 'Bold graphic design on premium cotton',
      image: 'assets/images/shirt1.png',
    ),
    Product(
      id: 3,
      name: 'Leather Bomber Jacket',
      category: 'jackets',
      price: 199.99,
      description: 'Premium leather streetwear jacket',
      image: 'assets/images/jacket1.png',
    ),
    Product(
      id: 4,
      name: 'Monochrome Hoodie',
      category: 'hoodies',
      price: 94.99,
      description: 'Minimalist design hoodie',
      image: 'assets/images/hoodie2.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SAINT RIFT',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner Section
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black87, Colors.grey.shade800],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'NEW DROP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Summer Collection 2024',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 12,
                            ),
                          ),
                          child: const Text(
                            'SHOP NOW',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Featured Products Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'FEATURED PRODUCTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: featuredProducts.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: featuredProducts[index],
                        onTap: () {},
                        onAddToCart: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '${featuredProducts[index].name} added to cart',
                              ),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}