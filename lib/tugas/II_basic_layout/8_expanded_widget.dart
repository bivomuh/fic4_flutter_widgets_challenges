import 'package:flutter/material.dart';

class ExpandedWidgetBivo extends StatelessWidget {
  const ExpandedWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bivo FIC - Expanded Widget'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios_new),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'List Checklist',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Icon(
                  Icons.check,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
