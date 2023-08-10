import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final List<bool> _selections = List.generate(3, (_) => false);
  var textvar = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: MediaQuery.of(context).size.width < 800 ? 380 : 260,
      child: Column(children: [
        Text(textvar),
        const SizedBox(
          height: 10,
        ),
        const Text('Select Bundles'),
        const SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: ToggleButtons(
              isSelected: _selections,
              
              fillColor: Colors.black,
              direction: MediaQuery.of(context).size.width < 800
                  ? Axis.vertical
                  : Axis.horizontal,
              onPressed: (index) {
                setState(() {
                  for (int a = 0; a < _selections.length; a++) {
                    if (a == index) {
                      _selections[index] = !_selections[index];
                    } else {
                      _selections[a] = false;
                    }

                    if (index == 0) {
                      textvar = "Daily Charges 3 AFA";
                    } else if (index == 1) {
                      textvar = "Weekly Charges 10 AFA";
                    } else if (index == 2) {
                      textvar = "Monthly Charges 30 AFA";
                    }
                  }
                });
              },
              //constraints: const BoxConstraints(maxHeight: 100, maxWidth: 180),
              children: const <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      'Daily',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Weekly',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      'Monthly',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ))
              ],
            )),
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
        Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close")),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Subscribe"))
        ])),
      ]),
    );
  }
}
