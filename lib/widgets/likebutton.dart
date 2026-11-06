import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    super.key,
    required this.isLiked,
    required this.onLikePressed,
  });

  final bool isLiked;
  final VoidCallback onLikePressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onLikePressed,
      child: Text(
        "Me gusta",
        style: TextStyle(
          color: isLiked ? Colors.blue : Colors.grey,
          fontSize: 16,
          fontWeight: isLiked ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
