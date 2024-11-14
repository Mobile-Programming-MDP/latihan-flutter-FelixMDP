import 'package:flutter/material.dart';
import 'package:wisata_candi/Item_card.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Buatkan Appbar dengan judul Wisata Candi
      appBar: AppBar(
        title: Text('Wisata Candi'),
      ),
      //TODO: 2 Buat Body dengan Gridview.builder
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            Candi candi = candiList[index];
            return ItemCard(candi: candi);
          }),
      //TODO: 3 Buat Itemcard sebagai return value dari Gridview.builder
    );
  }
}
