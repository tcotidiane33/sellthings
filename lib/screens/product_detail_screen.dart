import 'package:flutter/material.dart';
import 'package:my_food_market/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          Image.network(product.imageUrl),
          Text(product.name),
          Text('Prix: \$${product.price.toStringAsFixed(2)}'),
          // Autres détails du produit ici
        ],
      ),
    );
  }
}
