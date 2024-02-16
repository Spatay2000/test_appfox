import 'package:flutter/material.dart';

class CardSearchResultWidget extends StatelessWidget {
  final String title;
  final String shortDescription;
  final String rating;
  const CardSearchResultWidget(
      {Key? key,
      required this.title,
      required this.shortDescription,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10), // Скругление углов
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Рейтинг: $rating',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            shortDescription,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
