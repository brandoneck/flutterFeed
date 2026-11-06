import 'package:flutter/material.dart';
import 'package:flutter_proj/data/data.dart';
import 'package:flutter_proj/widgets/cardfeed.dart';

class ListViewFeed extends StatelessWidget {
  const new({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCard.length,
      itemBuilder: (context, index){
      return CardFeed(card: listCard[index]);

    });
  }
}

