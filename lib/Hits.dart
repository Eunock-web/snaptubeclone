import 'package:flutter/material.dart';

class Hit extends StatelessWidget {
  const Hit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _CardHit(artiste: "Afrobeat", titre: "Hit du Moment", image: "assets/_ (1).jpeg"),
          SizedBox(width: 16),
          _CardHit(artiste: "Pop", titre: "Today's Top Hits", image: "assets/_ (2).jpeg"),
          SizedBox(width: 16),
          _CardHit(artiste: "Rap0", titre: "Rap Caviar", image: "assets/_ (3).jpeg"),
          SizedBox(width: 16),
          _CardHit(artiste: "Rap1", titre: "Rap Caviar", image: "assets/_ (4).jpeg"),

          SizedBox(width: 16),
          _CardHit(artiste: "Rap2", titre: "Rap Caviar", image: "assets/_ (5).jpeg"),
        ],
      ),
    );
  }
}

class _CardHit extends StatelessWidget {
  final String artiste;
  final String titre;
  final String image;

  const _CardHit({
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
              child: const Icon(Icons.flash_on, color: Colors.yellow),
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
          "🔥 $artiste",
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}