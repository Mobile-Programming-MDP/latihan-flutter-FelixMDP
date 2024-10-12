import 'package:flutter/material.dart';
// import 'package:latihan_widget/latihan_widget.dart';
import 'package:latihan_widget/tugas_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyGallery(),
    );
  }
}
