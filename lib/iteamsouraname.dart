import 'package:flutter/material.dart';
import 'package:qurann/souradetilsscreen.dart';

class IteamsouraName extends StatelessWidget {
  String name;
  int index;

  IteamsouraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SouraDetelsScreen.routName,
            arguments: SouraDtelsArgs(name: name, index: index));
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
