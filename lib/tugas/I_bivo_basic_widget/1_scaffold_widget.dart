import 'package:flutter/material.dart';

class ScaffoldWidgetBivo extends StatelessWidget {
  const ScaffoldWidgetBivo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("bivo FIC - Scaffold, Appbar"),
      ),
      body: const Center(
        child: Text("You have pressed the button 0 times."),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
