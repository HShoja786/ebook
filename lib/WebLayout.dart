import 'package:ebook/Content/book_category.dart';
import 'package:ebook/Content/login.dart';
import 'package:ebook/Content/mainpage.dart';
import 'package:ebook/Content/subscriber.dart';
import 'package:flutter/material.dart';
import 'package:ebook/Content/about.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) {
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
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed('/about');
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
            'images/banner.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            height: 200,
          ),
          Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.red),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(246, 183, 173, 173),
                            ),
                            onPressed: () {
                              AlertDialog al =
                                  const AlertDialog(content: Login());

                              showDialog(
                                context: context,
                                builder: (context) {
                                  return al;
                                },
                              );
                            },
                            child: const Text('SUBSCRIBE'))),
                    SizedBox(
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(246, 183, 173, 173)),
                            onPressed: () {},
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
              icon: Icon(Icons.copyright), label: '2023. All Rights Reserved.'),
          BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: "Email: hafeezullah.shoja@gmail.com"),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), label: "93799998822"),
        ], backgroundColor: Colors.grey),
      );
    } else {
      return Scaffold(
        body:
            //Header

            SingleChildScrollView(
          child: Column(children: [
            //Header Image
            Image.asset(
              'images/banner.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              height: 300,
            ),
            const SizedBox(
              height: 10,
            ),

            //Header Menu
            Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.red),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MenuBar(children: <Widget>[
                        MenuItemButton(
                          child: const Text('Home'),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true)
                                .pushNamed('/');
                          },
                        ),
                        MenuItemButton(
                          child: const Text('About Us'),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true)
                                .pushNamed('/about');
                          },
                        ),
                        SubmenuButton(menuChildren: <Widget>[
                          MenuItemButton(
                            child: const Text('Adventure'),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/book_category');
                            },
                          ),
                        ], child: const Text('Category')),
                        const SubmenuButton(menuChildren: <Widget>[
                          MenuItemButton(child: Text('Vedio')),
                          MenuItemButton(child: Text('Audio')),
                          MenuItemButton(child: Text('Book')),
                        ], child: Text('Type')),
                      ]),
                      Flexible(
                          child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                      )),
                      Row(
                        children: [
                          SizedBox(
                              height: 40,
                              width: 150,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    AlertDialog al =
                                        const AlertDialog(content: Subscribe());

                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return al;
                                      },
                                    );
                                  },
                                  child: const Text('SUBSCRIBE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)))),
                          const SizedBox(width: 5),
                          SizedBox(
                              height: 40,
                              width: 150,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {
                                    AlertDialog al =
                                        const AlertDialog(content: Login());

                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return al;
                                        });
                                  },
                                  child: const Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )))
                        ],
                      )
                    ])),

            //Content
            Container(
                clipBehavior: Clip.none,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                //decoration: const BoxDecoration(),
                //color: Colors.blue,
                child: getWidget(context))

            //if(1==1) { const MainContent(); } else { const AboutContent();}),

            //const Text('hello')), ),
          ]),
        ),

        //Footer

        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.copyright), label: '2023. All Rights Reserved.'),
          BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: "Email: hafeezullah.shoja@gmail.com"),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), label: "93799998822"),
        ], backgroundColor: Colors.grey),
      );
    }
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
