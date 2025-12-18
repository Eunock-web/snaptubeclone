import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _CardTop(artiste: "Global", titre: "Top 50 - Monde", image: "assets/_ (1).jpeg"),
          SizedBox(width: 16),
          _CardTop(artiste: "France", titre: "Top 50 - France", image: "assets/anime.jpeg"),
          SizedBox(width: 16),
          _CardTop(artiste: "Viral", titre: "Viral 50", image: "assets/_ (1).jpeg"),

          SizedBox(width: 16),
          _CardTop(artiste: "Viral", titre: "Viral 50", image: "assets/X.jpeg"),

          SizedBox(width: 16),
          _CardTop(artiste: "Viral", titre: "Viral 50", image: "assets/_ (1).jpeg"),

        ],
      ),
    );
  }
}

class _CardTop extends StatelessWidget {
  final String artiste;
  final String titre;
  final String image;

  const _CardTop({
    super.key, 
    required this.artiste, 
    required this.titre, 
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image, 
            width: 150, 
            height: 150, 
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 150, height: 150, color: Colors.grey[900],
              child: const Icon(Icons.leaderboard, color: Colors.green),
            ),
          ),
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
          "Playlist • $artiste",
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}