import 'package:flutter/material.dart';

class DialogWidgetBivo extends StatefulWidget {
  const DialogWidgetBivo({super.key});

  @override
  State<DialogWidgetBivo> createState() => _DialogWidgetBivoState();
}

class _DialogWidgetBivoState extends State<DialogWidgetBivo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bivo FIC - Dialog & Bottomsheet"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Info'),
                        content: const Text('Your order was placed'),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'))
                        ],
                      );
                    });
              },
              child: const Text('Open Dialaog'),
            ),
            ElevatedButton(
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
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class DialogWidgetBivo extends StatefulWidget {
//   const DialogWidgetBivo({Key? key}) : super(key: key);

//   @override
//   State<DialogWidgetBivo> createState() => _DialogWidgetState();
// }

// class _DialogWidgetState extends State<DialogWidgetBivo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("FIC - Dialog & Bottomsheet"),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 await showDialog<void>(
//                   context: context,
//                   barrierDismissible: true,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: const Text('Info'),
//                       content: SingleChildScrollView(
//                         child: ListBody(
//                           children: const [
//                             Text('Your order was placed!'),
//                           ],
//                         ),
//                       ),
//                       actions: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue,
//                           ),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: const Text("Ok"),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: const Text('Open Dialog'),
//             ),
//             const SizedBox(
//               width: 50,
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 await showModalBottomSheet<void>(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: SizedBox(
//                         width: MediaQuery.of(context).size.width,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             const Text('Your order was placed!'),
//                             const SizedBox(
//                               height: 20.0,
//                             ),
//                             ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.blue,
//                               ),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child: const Text("Ok"),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//               child: const Text('Open BottomSheet'),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 bool confirm = false;
//                 await showModalBottomSheet<void>(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return Container(
//                       padding: const EdgeInsets.all(30.0),
//                       child: Wrap(
//                         children: [
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 const Text(
//                                   "Confirm",
//                                   style: TextStyle(
//                                     fontSize: 16.0,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 20.0,
//                                 ),
//                                 const Text(
//                                   'Are you sure you want to delete this item?',
//                                 ),
//                                 const SizedBox(
//                                   height: 20.0,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     ElevatedButton(
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.grey[600],
//                                       ),
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       },
//                                       child: const Text("No"),
//                                     ),
//                                     const SizedBox(
//                                       width: 10.0,
//                                     ),
//                                     ElevatedButton(
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.blueGrey,
//                                       ),
//                                       onPressed: () {
//                                         confirm = true;
//                                         Navigator.pop(context);
//                                       },
//                                       child: const Text("Yes"),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//                 if (confirm) {
//                   print("Confirmed!");
//                 }
//               },
//               child: const Text('Open Bottomsheet confirmation'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     backgroundColor: Colors.blue,
//                     content: Text('Your request is successful'),
//                   ),
//                 );
//               },
//               child: const Text('Open snackbar'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
