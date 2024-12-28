import 'package:flutter/material.dart';
import 'package:qurann/hadethtab.dart';
import 'package:qurann/iteamhadetedetals.dart';

class HadethDetelsScreen extends StatefulWidget {
  static const String routName = 'hadethdetils';

  @override
  State<HadethDetelsScreen> createState() => _HadethDetelsScreenState();
}

class _HadethDetelsScreenState extends State<HadethDetelsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/maine.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.titel,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemHadthNAME(
              content: args.content[index],
            );
          },
          itemCount: args.content.length,
        ),
      ),
    ]);
  }
}
