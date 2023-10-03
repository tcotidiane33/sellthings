// login_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_market/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameOrEmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  void onLoginButtonPressed(BuildContext context) {
    // Ajoutez ici la logique de validation et de traitement de la connexion
    // Une fois la connexion réussie, effectuez la redirection vers HomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Connexion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: usernameOrEmailController,
              decoration: const InputDecoration(labelText: 'Nom d\'utilisateur ou adresse e-mail'),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Mot de passe'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Appel de la fonction de gestion de la connexion
                onLoginButtonPressed(context);
              },
              child: const Text('Connexion'),
            ),
          ],
        ),
      ),
    );
  }
}
