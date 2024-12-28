import 'package:flutter/material.dart';
import 'package:qurann/hadethdetilsscreen.dart';
import 'package:qurann/hadethtab.dart';

class IteamHadethName extends StatelessWidget {
  Hadeth hadeth;

  IteamHadethName({
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetelsScreen.routName, arguments: hadeth);
      },
      child: Text(
        hadeth.titel,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
