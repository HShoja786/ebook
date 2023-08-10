import 'package:flutter/material.dart';
import 'package:ebook/Components/bookcard.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});
  @override
  State<MainContent> createState() => _MainContent();
}

class _MainContent extends State<MainContent> {
  final List bookList = [1, 2, 3, 5, 4, 3, 2, 2, 3, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: GridView.count(
          padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 0.0),
          crossAxisCount: (MediaQuery.of(context).size.width < 800) ? 1 : 4,
          children: bookList.map((v) {
            return BookCard(bookName: v.toString());
          }).toList(),
        ));
  }
}
