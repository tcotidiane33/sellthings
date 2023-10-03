import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart'; // Importez intl
import 'package:my_food_market/providers/products_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);

    // Utilisez productsProvider pour accéder aux données des produits
    // par exemple, productsProvider.products pour obtenir la liste des produits

    return Scaffold(

      appBar: AppBar(
        title: const Text("SellThings"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,

      ),
      body: ListView.builder(
        itemCount: productsProvider.products.length,
        itemBuilder: (ctx, index) {
          final product = productsProvider.products[index];
          return ListTile(
            leading: Image.network(
              product.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(product.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Prix : \$${product.price.toStringAsFixed(2)}'),
                Text('Description : ${product.description}'),
                Text('Fournisseur : ${product.providerName}'),
                Text('Heure de publication : ${product.formattedPostingTime}'), // Utilisation de formattedPostingTime
                Text('Date de publication : ${DateFormat('dd/MM/yyyy').format(product.postingDate)}'), // Format de date personnalisé
              ],

            ),
              onTap: () {
              // Afficher la modal
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(product.name),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        ),
                        Text('Prix : \$${product.price.toStringAsFixed(2)}'),
                        Text('Description : ${product.description}'),
                        Text('Fournisseur : ${product.providerName}'),
                        Text('Heure de publication : ${product.formattedPostingTime}'),
                        Text('Date de publication : ${DateFormat('dd/MM/yyyy').format(product.postingDate)}'),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          // Gérer la logique de contact avec le fournisseur
                          // Par exemple, afficher une boîte de dialogue de messagerie ou une page de messagerie dédiée.
                          Navigator.of(context).pop(); // Fermer la modal
                        },
                        child: Text("Contacter le fournisseur"),
                      ),
                    ],
                  );
                },
              );
            },
          );

        },

      ),
    );
    
  }
}