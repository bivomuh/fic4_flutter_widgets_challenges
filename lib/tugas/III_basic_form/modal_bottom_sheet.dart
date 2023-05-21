import 'package:flutter/material.dart';

class showBottomDialogTest extends StatefulWidget {
  const showBottomDialogTest({super.key});

  @override
  State<showBottomDialogTest> createState() => _showBottomDialogTestState();
}

class _showBottomDialogTestState extends State<showBottomDialogTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Bottomsheet"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Your order was placed"),
                            const SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: const Text('Open Bottomsheet')),
      ),
    );
  }
}
