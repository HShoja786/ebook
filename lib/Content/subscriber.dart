import 'package:flutter/material.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({super.key});

  @override
  State<StatefulWidget> createState() => SubscribeState();
}

class SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 600,
        height: MediaQuery.of(context).size.width < 800 ? 250 : 260,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration: const BoxDecoration(color: Colors.red),
              child: const Text("E-BOOK",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: const Text('Phone Number')),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixText: "+93",
                      prefixIcon: const Icon(Icons.phone, color: Colors.blue),
                      //const Padding(
                      //    padding: EdgeInsets.all(10), child: Text("+93")),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            ElevatedButton(onPressed: () {}, child: const Text("LOGIN"))
          ],
        ));
  }
}
