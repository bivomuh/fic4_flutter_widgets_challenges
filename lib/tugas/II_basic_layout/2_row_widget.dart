import 'package:flutter/material.dart';

class RowWidgetBivo extends StatelessWidget {
  const RowWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bivo FIC - Row'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                const Text(
                  'detail',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    size: 32.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
