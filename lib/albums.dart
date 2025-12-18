import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({super.key}); // Ajout de const ici

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280, // Une ListView horizontale a besoin d'une hauteur définie
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16),
        // On utilise 'children' au pluriel
        children: [
          _CardAlbum(chanteuse: "Fantasia", titre: "Album One"),
          const SizedBox(width: 16), 
          _CardAlbum(chanteuse: "Fantasia", titre: "Album Two"),
                    _CardAlbum(chanteuse: "Fantasia", titre: "Album One"),
          const SizedBox(width: 16), 
          _CardAlbum(chanteuse: "Fantasia", titre: "Album Two"),

          _CardAlbum(chanteuse: "Fantasia", titre: "Album One"),
          const SizedBox(width: 16), 
          _CardAlbum(chanteuse: "Fantasia", titre: "Album Two"),

          _CardAlbum(chanteuse: "Fantasia", titre: "Album One"),
          const SizedBox(width: 16), 
          _CardAlbum(chanteuse: "Fantasia", titre: "Album Two"),

        ],
      ),
    );
  }
}

class _CardAlbum extends StatelessWidget {
  final String chanteuse;
  final String titre;

  const _CardAlbum({super.key, required this.chanteuse, required this.titre});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligne le texte à gauche
      children: [
        // ClipRRect permet de couper l'image pour qu'elle soit arrondie
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset("assets/_.jpeg",
            width: 160,
            height: 160,
            fit: BoxFit.cover, // L'image remplit bien le carré
          ),
        ),
        const SizedBox(height: 8), // Petit espace sous l'image
        Text(
          titre,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          chanteuse,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}