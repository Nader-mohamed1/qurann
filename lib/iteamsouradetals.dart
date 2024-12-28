import 'package:flutter/material.dart';

class ItemSoraNAME extends StatelessWidget {
  String content;
  int index;

  ItemSoraNAME({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
