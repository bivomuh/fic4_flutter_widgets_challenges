import 'package:flutter/material.dart';

class TextWidgetBivo extends StatelessWidget {
  const TextWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bivo FIC - Text"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              "Discover the most modern furniture",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
