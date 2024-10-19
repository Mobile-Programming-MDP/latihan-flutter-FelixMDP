import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      candi.imageAsset,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100]?.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(candi.name),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                const SizedBox(width: 8),
                const SizedBox(
                  width: 70,
                  child: Text(
                    'Lokasi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(": "),
                Text(candi.location),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                ),
                const SizedBox(width: 8),
                const SizedBox(
                  width: 70,
                  child: Text(
                    'Dibangun',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(": "),
                Text(candi.built),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.house,
                  color: Colors.green,
                ),
                const SizedBox(width: 8),
                const SizedBox(
                  width: 70,
                  child: Text(
                    'Tipe',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(": "),
                Text(candi.type),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.deepPurple.shade100,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Deskripsi',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
            Text(candi.description),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.deepPurple.shade100,
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: candi.imageUrls.length,
                itemBuilder: (content, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.deepPurple.shade100,
                              width: 2,
                            )),
                        child: CachedNetworkImage(
                          imageUrl: candi.imageUrls[index],
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            width: 120,
                            height: 120,
                            color: Colors.deepPurple[50],
                          ),
                          errorWidget: (content, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Tap untuk memperbesar',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
