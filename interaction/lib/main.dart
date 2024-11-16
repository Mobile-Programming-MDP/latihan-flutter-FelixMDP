import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HomeScreen()),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionLabel = 'belum ada aksi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Interaction'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    actionLabel = 'Pengguna Melakukan Tap';
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    actionLabel = 'Pengguna Melakukan Double Tap';
                  });
                },
                onLongPress: () {
                  setState(() {
                    actionLabel = 'Pengguna Melakukan Long Press';
                  });
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                      child: Text(
                    'Aksi',
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                actionLabel,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
