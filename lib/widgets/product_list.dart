import 'package:flutter/material.dart';
import 'package:my_food_market/models/product.dart';
import 'package:my_food_market/screens/product_detail_screen.dart';

class ProductList extends StatelessWidget {
  final List<Product> products; // Remplacez par votre liste de produits

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (ctx, index) {
        return ListTile(
          leading: Image.network(products[index].imageUrl),
          title: Text(products[index].name),
          subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => ProductDetailScreen(product: products[index]),
            ));
          },
        );
      },
    );
  }
}
