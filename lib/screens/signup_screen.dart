// signup_screen.dart
import 'package:flutter/material.dart';
import 'package:my_food_market/screens/home_screen.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  SignupScreen({super.key});

  void onSignupButtonPressed(BuildContext context) {
    // Ajoutez ici la logique de validation et de traitement de l'inscription
    // Une fois l'inscription réussie, effectuez la redirection vers HomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inscription')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: fullNameController,
              decoration: const InputDecoration(labelText: 'Nom complet'),
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Nom d\'utilisateur'),
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Adresse e-mail'),
            ),
            TextFormField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Adresse physique'),
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: const InputDecoration(labelText: 'Numéro de téléphone WhatsApp'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Appel de la fonction de gestion de l'inscription
                onSignupButtonPressed(context);
              },
              child: const Text('Inscription'),
            ),
          ],
        ),
      ),
    );
  }
}
