import 'package:flutter/material.dart';

class PaddingWidgetBivo extends StatelessWidget {
  const PaddingWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bivo FIC - Padding'),
        actions: const [],
      ),
      body: Container(
        height: 500,
        width: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 30,
                bottom: 40,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
