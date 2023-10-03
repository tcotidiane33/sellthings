import 'package:flutter/material.dart';
import 'package:my_food_market/models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      name: 'Pommes',
      price: 10.0,
      imageUrl: 'https://images.pexels.com/photos/326005/pexels-photo-326005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      description: 'Des pommes fraîches de saison.',
      providerName: 'Coach YANNICK', // Assurez-vous de fournir une valeur valide
      postingTime: DateTime.now(),
      postingDate: DateTime.now(),
    ),
    Product(
      name: 'Bananes',
      price: 15.0,
      imageUrl: 'https://images.pexels.com/photos/2557036/pexels-photo-2557036.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      description: 'Bananes mûres et délicieuses.',
      providerName: 'Lilian ARMOON', // Assurez-vous de fournir une valeur valide
      postingTime: DateTime.now(),
      postingDate: DateTime.now(),
    ),
    Product(
      name: 'Mangues',
      price: 5.0,
      imageUrl: 'https://images.pexels.com/photos/918643/pexels-photo-918643.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      description: 'Mangues sucrées et juteuses.',
      providerName: 'Nath KOUAKOU', // Assurez-vous de fournir une valeur valide
      postingTime: DateTime.now(),
      postingDate: DateTime.now(),
    ),
    // Ajoutez d'autres produits ici
  ];

  List<Product> get products => [..._products];
}
