import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un Produit'),
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Nom du Produit'),
          ),
          TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Prix'),
          ),
          TextField(
            controller: imageUrlController,
            decoration: const InputDecoration(labelText: 'URL de l\'Image'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ajouter le nouveau produit à la liste (à implémenter)
              Navigator.pop(context); // Revenir à l'écran précédent
            },
            child: const Text('Ajouter'),
          ),
        ],
      ),
    );
  }
}
