import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle(
      {required this.primaryText, required this.secondaryText, super.key});

  final String primaryText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          primaryText,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 7.0),
        Text(
          secondaryText,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        const Text(
          'See more',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Color(0XFF7f859a),
          ),
        ),
      ],
    );
  }
}
