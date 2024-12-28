import 'package:flutter/material.dart';

class ItemHadthNAME extends StatelessWidget {
  String content;

  ItemHadthNAME({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
