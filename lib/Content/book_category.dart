import 'package:ebook/Components/bookcard.dart';
import 'package:flutter/material.dart';

class BookCategory extends StatelessWidget {
  const BookCategory({super.key});

  @override
  Widget build(BuildContext context) {
    var list = [
      'Adventure',
      'Dari Book',
      'Jokes',
      'Pashto Book',
      'Irani Books',
      'Picture Books',
      'Comic Books'
    ];

    var lstAdventure = ["add1", "add2", "add3", "add4"];
    var lstDari = ['D1', 'D2', 'D3', 'D4'];
    var lstJokes = ['J1', 'J2', 'J3', 'J4'];

    var args = ModalRoute.of(context)!.settings.arguments.toString();

    var ab = args.split(',');

    List lstargs = args == 'null' ? [] : ab;

    return //const Text('Hello');
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Text("books $args"),
        Container(
          width: MediaQuery.of(context).size.width < 800 ? 180 : 250,
          height: MediaQuery.of(context).size.height * 0.9,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 219, 219, 219)),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.fromLTRB(10, 50.0, 0.0, 0.0),
          child: Column(children: <Widget>[
            const Text(
              'Categories',
              style: TextStyle(fontSize: 24),
            ),
            const Divider(),
            Expanded(
                child: ListView.builder(
                    itemCount: list.length,
                    itemExtent: 30,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text(list[index],
                            style: const TextStyle(fontSize: 16)),
                        onTap: () {
                          var lst = ['1', '2', '3', '4'];
                          if (index == 0) {
                            lst = lstAdventure;
                          } else if (index == 1) {
                            lst = lstDari;
                          } else if (index == 2) {
                            lst = lstJokes;
                          } else {
                            lst;
                          }

                          Navigator.of(context)
                              .pushNamed('/book_category', arguments: lst);
                        },
                      );
                    })))
          ]),
        ),
        Flexible(
            child: Container(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.9,
                //color: Colors.blue,
                child: ListView.builder(
                  itemCount: lstargs.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: BookCard(
                          bookName: lstargs[index],
                          opt: MediaQuery.of(context).size.width < 800
                              ? ""
                              : "List",
                        ));
                  },
                ))),
      ],
    );
  }
}
