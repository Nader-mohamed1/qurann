import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qurann/appcolors.dart';
import 'package:qurann/iteamhadethname.dart';

class Hadethtab extends StatefulWidget {
  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
  List<Hadeth> ahadethlist = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethlist.isEmpty) {
      loadhadethfile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/logo.png')),
        Divider(
          color: AppColors.primaryLightcolor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.haseth_name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: AppColors.primaryLightcolor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: ahadethlist.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightcolor,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColors.primaryLightcolor,
                      thickness: 3,
                    );
                  },
                  itemBuilder: (context, index) {
                    return IteamHadethName(hadeth: ahadethlist[index]);
                  },
                  itemCount: ahadethlist.length,
                ),
        )
      ],
    );
  }

  void loadhadethfile() async {
    String hadethcontent =
        await rootBundle.loadString('assets/files/hadths.txt');
    List<String> hadethlist = hadethcontent.split('#\r\n');
    for (int i = 0; i < hadethlist.length; i++) {
      print(hadethlist[i]);
      List<String> hadethlines = hadethlist[i].split('\n');
      String titel = hadethlines[0];
      hadethlines.removeAt(0);
      Hadeth hadeth = Hadeth(titel: titel, content: hadethlines);
      ahadethlist.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String titel;
  List<String> content;

  Hadeth({required this.titel, required this.content});
}
