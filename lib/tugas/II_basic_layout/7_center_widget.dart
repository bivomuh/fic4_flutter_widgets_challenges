import 'package:flutter/material.dart';

class CenterWidgetBivo extends StatelessWidget {
  const CenterWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bivo FIC - Center Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.grey[20],
                  elevation: 5.0,
                ),
                child: Text(
                  'Add to Cart'.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
