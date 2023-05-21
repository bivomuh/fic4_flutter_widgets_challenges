import 'package:flutter/material.dart';

class DialogWidgetTest extends StatefulWidget {
  const DialogWidgetTest({super.key});

  @override
  State<DialogWidgetTest> createState() => _DialogWidgetTestState();
}

class _DialogWidgetTestState extends State<DialogWidgetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Information"),
                        content: const Text("Your data has been sent"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("OK"))
                        ],
                      );
                    });
              },
              child: const Text("Open Dialog"),
            ),
            ElevatedButton(
              onPressed: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Your order was placed!'),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Ok"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Open BottomSheet'),
            ),
          ],
        ),
      ),
    );
  }
}
