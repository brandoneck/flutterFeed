import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/listviewfeed.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Cars'),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: ListViewFeed(),
      backgroundColor: Colors.grey[300],
    );
  }
}

