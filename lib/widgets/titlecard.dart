import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const new({
    super.key,
    required this.name
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Text(name[0])),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
            color: Color.fromARGB(255, 71, 71, 71),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
