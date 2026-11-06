import 'package:flutter/material.dart';

class LikeCounter extends StatelessWidget {
  const LikeCounter({super.key, required this.likes});

  final int likes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "$likes 👍",
          style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      );
  }
}
