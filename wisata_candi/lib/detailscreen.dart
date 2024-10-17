import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({
    super.key,
    required this.candi,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
       Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 32,
            ),
            child: 
            ),
            
        ],
       )
      ],
    ));
  }
}
