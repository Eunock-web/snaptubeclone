import 'package:flutter/material.dart';

class Appbarcontent extends StatelessWidget {
  final String content;
  final bool isActive; 

  const Appbarcontent({
    super.key, 
    required this.content, 
    this.isActive = false, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Centre le texte horizontalement et verticalement
      alignment: Alignment.center, 
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isActive ? const Color(0xFF1DB954) : const Color(0xFF2A2A2A),
      ),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          // CONDITION : Texte noir si fond vert, blanc sinon
          color: isActive ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}