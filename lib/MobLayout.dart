import 'package:ebook/Content/mainpage.dart';
import 'package:ebook/Content/subscriber.dart';
import 'package:flutter/material.dart';
import 'package:ebook/Content/about.dart';
import 'package:ebook/Content/book_category.dart';
import 'package:ebook/Content/login.dart';

class MobLayout extends StatelessWidget {
  const MobLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed('/');
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed('/about');
              },
            ),
            ExpansionTile(
              title: const Text('Category'),
              children: [
                ListTile(
                  title: const Text('Adventure'),
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/book_category');
                  },
                )
              ],
            ),
            const ExpansionTile(
              title: Text('Type'),
              children: [
                ListTile(title: Text('Book')),
                ListTile(title: Text('Audio')),
                ListTile(title: Text('Vedio')),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset(
          'assets/images/banner.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
          height: 150,
        ),
        Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.red),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(246, 183, 173, 173),
                          ),
                          onPressed: () {
                            AlertDialog al =
                                const AlertDialog(content: Subscribe());

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return al;
                                });
                          },
                          child: const Text('SUBSCRIBE'))),
                  SizedBox(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(246, 183, 173, 173)),
                          onPressed: () {
                            AlertDialog al =
                                const AlertDialog(content: Login());

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return al;
                                });
                          },
                          child: const Text('LOGIN'))),
                ])),
        const SizedBox(
          height: 10,
        ),
        Container(
            clipBehavior: Clip.none,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //decoration: const BoxDecoration(),
            //color: Colors.blue,
            child: getWidget(context))
      ])),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.copyright),
            label: '2023 Roshan. All Rights Reserved.'),
        BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: "Email: hafeezullah.shoja@roshan.af"),
        BottomNavigationBarItem(
            icon: Icon(Icons.phone), label: "Phone: 93799998822"),
      ], backgroundColor: Colors.grey),
    );
  }

  Widget getWidget(BuildContext ctx) {
    var rout = ModalRoute.of(ctx)!.settings.name;

    if (rout.toString().contains('about')) {
      return const AboutContent();
    } else if (rout.toString().contains('book_category')) {
      return const BookCategory();
    }

    return const MainContent();
  }
}
