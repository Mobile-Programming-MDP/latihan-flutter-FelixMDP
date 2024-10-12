import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Widget Demo",
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              color: Colors.blue,
              child: const Center(
                  child: Text(
                "Felix Gunawan",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Ini adalah tombol Elevated")),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("Waiting: 4,5")
            ]),
            Image.network(
              "https://picsum.photos/id/237/200/300",
              height: 400,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ],
        ));
  }
}
