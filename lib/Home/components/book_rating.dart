import 'package:flutter/material.dart';

import '../../constant.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: Color(0xFFD3D3D3),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '$rating',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
