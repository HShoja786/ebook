import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.bookName, this.opt = ""});

  final String bookName;
  final String opt;

  @override
  Widget build(BuildContext context) {
    if (opt == "List") {
      return Card(
          // elevation: double.infinity,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                    child: Image.asset(
                  'assets/images/book.png',
                  //   width: double
                  //       .infinity, //MediaQuery.of(context).size.width, //double.infinity,
                  //   height: double
                  //       .infinity, //MediaQuery.of(context).size.height, //double.infinity,
                )),
                Column(children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Text(bookName,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Text(bookName, style: const TextStyle(fontSize: 16)),
                  )
                ]),
              ]));
    } else {
      return Card(
          // elevation: double.infinity,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Column(children: <Widget>[
            Flexible(
                child: Image.asset(
              'assets/images/book.png',
              //   width: double
              //       .infinity, //MediaQuery.of(context).size.width, //double.infinity,
              //   height: double
              //       .infinity, //MediaQuery.of(context).size.height, //double.infinity,
            )),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(bookName,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            )
          ]));
    }
  }
}
