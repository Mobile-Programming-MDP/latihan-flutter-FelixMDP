import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bioskop App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text(
          "TIBOX",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar film
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.image,
                  size: 80,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 16),
              // Judul dan deskripsi
              Text(
                "JUDUL FILM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "SinopsisLorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Mauris sed lacus dolor. Mauris dignissim urna non lacus aliquet.",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
              SizedBox(height: 16),
              // Tombol Beli Tiket
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Beli Tiket",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Jadwal dan harga
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _dateButton("1 Jan"),
                  _dateButton("2 Jan"),
                  _dateButton("3 Jan"),
                  _dateButton("4 Jan"),
                ],
              ),
              SizedBox(height: 16),
              // Bioskop dan jam tayang
              _bioskopSection(
                  "Bioskop 1", ["Jam 1", "Jam 2", "Jam 3", "Jam 4"], "Harga 1"),
              _bioskopSection(
                  "Bioskop 2", ["Jam 1", "Jam 5", "Jam 6"], "Harga 2"),
              _bioskopSection(
                  "Bioskop 3", ["Jam 1", "Jam 2", "Jam 3"], "Harga 3"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dateButton(String date) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(date, style: TextStyle(color: Colors.white)),
    );
  }

  Widget _bioskopSection(String name, List<String> times, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: times.map((time) => _timeButton(time)).toList(),
        ),
        SizedBox(height: 8),
        Text(price,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),
        Divider(thickness: 1),
      ],
    );
  }

  Widget _timeButton(String time) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        time,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DetailScreen(),
  ));
}
