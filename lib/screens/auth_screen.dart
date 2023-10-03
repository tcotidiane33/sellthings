class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connexion/Inscription')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nom'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Entrez votre nom';
                }
                return null;
              },
            ),
            // Ajoutez d'autres champs de formulaire ici (prénom, numéro, description, localisation)
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // Traitez les données du formulaire (connexion ou inscription)
                }
              },
              child: Text('Valider'),
            ),
          ],
        ),
      ),
    );
  }
}
