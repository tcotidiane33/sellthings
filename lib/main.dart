import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_food_market/providers/products_provider.dart'; // Assurez-vous d'importer correctement ProductsProvider
import 'package:my_food_market/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        title: 'My Food Market',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SplashScreen(),
        // Autres configurations de l'application...
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Affichez votre image/logo pendant quelques secondes
    // Vous pouvez personnaliser la durée en modifiant la valeur de 'duration'
    const duration = Duration(seconds: 3);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'), // Remplacez par le chemin de votre logo
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Optionnel : un indicateur de chargement
          ],
        ),
      ),
      // Utilisez FutureBuilder pour introduire une attente
      // puis naviguez vers HomeScreen une fois l'attente terminée
      // Assurez-vous d'importer 'package:my_food_market/screens/home_screen.dart'
      // pour utiliser HomeScreen.
      bottomNavigationBar: FutureBuilder(
        future: Future.delayed(duration),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox.shrink(); // Attendez
          } else {
            return const HomeScreen(); // Naviguez vers HomeScreen
          }
        },
      ),
    );
  }
}
