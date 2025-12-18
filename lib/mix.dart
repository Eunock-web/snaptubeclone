import 'package:flutter/material.dart';

class Mix extends StatelessWidget {
  const Mix({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Ajusté pour éviter les espaces vides excessifs
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _CardMix(artiste: "Fern", titre: "Mix Années ", image: "assets/Fern.jpeg",),
          SizedBox(width: 16),
          _CardMix(artiste: "Zonz", titre: "Daily Mix 1",image: "assets/X.jpeg"),
          SizedBox(width: 16),
          _CardMix(artiste: "Zenless", titre: "Mix Soul", image: "assets/Zenless.jpeg"),
        ],
      ),
    );
  }
}

class _CardMix extends StatelessWidget {
  final String artiste;
  final String titre;
  final String image;

  const _CardMix({super.key, required this.artiste, required this.titre, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(image, width: 150, height: 150, fit: BoxFit.cover),
        ),
        const SizedBox(height: 10),
        Text(
          titre,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        Text(
          "Par $artiste",
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
