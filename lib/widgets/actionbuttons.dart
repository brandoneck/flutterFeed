import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/likebutton.dart';

class ActionButtons extends StatelessWidget {
  const new({super.key, required this.onLikePressed, required this.isLiked});

  final VoidCallback onLikePressed;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.grey, fontSize: 16);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LikeButton(isLiked: isLiked, onLikePressed: onLikePressed),
          TextButton(
            onPressed: () {},
            child: Text("Comentar", style: textStyle),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Compartir", style: textStyle),
          ),
        ],
      ),
    );
  }
}
