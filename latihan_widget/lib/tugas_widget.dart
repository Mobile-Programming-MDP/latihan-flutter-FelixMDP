import 'package:flutter/material.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeri Foto"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.network(
            "https://picsum.photos/id/237/200/300",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Container(
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: const Center(
              child: Text(
                "Jalan di Barcelona",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              const Icon(Icons.location_on, color: Colors.red),
              const SizedBox(width: 8), // Optional spacing
              const Text("Lokasi: Barcelona, Spanyol"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              const Icon(Icons.date_range, color: Colors.blue),
              const SizedBox(width: 8), // Optional spacing
              const Text("Publikasi: 13 Agustus 2013"),
            ],
          ),
          Divider(),
          Row(
            children: [
              const SizedBox(width: 16),
              const Text(
                "Deskripsi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
              ),
            ],
          ),
          const SizedBox(height: 16), // Add some spacing before the description
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16), // Padding for text
            child: Text(
              "Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
