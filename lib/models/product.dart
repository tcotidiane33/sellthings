import 'package:intl/intl.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  final String providerName; // Champ du nom du fournisseur
  final DateTime postingTime; // Champ de l'heure de publication
  final DateTime postingDate; // Champ de la date de publication

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.providerName,
    required this.postingTime,
    required this.postingDate,
  });



  String get formattedPostingTime {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm'); // Format de date et d'heure souhaité
    return dateFormat.format(postingTime);
  }
}
