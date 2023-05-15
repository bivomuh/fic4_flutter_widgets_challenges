import 'package:flutter/material.dart';

class AspectRatioWidgetBivo extends StatelessWidget {
  const AspectRatioWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bivo FIC - Aspect Ratio'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 180 / 240,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
