import 'package:flutter/material.dart';

class ContainerWidgetBivo extends StatelessWidget {
  const ContainerWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bivo FIC - Container"),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset.zero,
              blurRadius: 15,
            )
          ],
        ),
      ),
    );
  }
}
