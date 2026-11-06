import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/actionbuttons.dart';
import 'package:flutter_proj/widgets/descriptioncard.dart';
import 'package:flutter_proj/widgets/imagecard.dart';
import 'package:flutter_proj/widgets/likecounter.dart';
import 'package:flutter_proj/widgets/titlecard.dart';

class CardFeed extends StatefulWidget {
  const CardFeed({super.key, required this.card});

  final Map<String, dynamic> card;

  @override
  State<CardFeed> createState() => _CardFeedState();
}

class _CardFeedState extends State<CardFeed> {
  int likes = 0;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();

    likes = widget.card["likes"];
  }

  void toggleLike() {
    setState(() {
      if (isLiked) {
        likes--;
        isLiked = false;
      } else {
        likes++;
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 380,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleCard(name: widget.card["name"]!),
            DescriptionCard(description: widget.card["description"]!),
            ImageCard(image: widget.card["src"]!),
            LikeCounter(likes: likes),
            ActionButtons(isLiked: isLiked, onLikePressed: toggleLike),
          ],
        ),
      ),
    );
  }
}
