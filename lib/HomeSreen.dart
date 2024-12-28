import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qurann/Qurantab.dart';
import 'package:qurann/hadethtab.dart';
import 'package:qurann/sabhatab.dart';
import 'package:qurann/settings.dart';

class Homesreen extends StatefulWidget {
  static const String routName = 'Home';

  @override
  State<Homesreen> createState() => _HomesreenState();
}

class _HomesreenState extends State<Homesreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/maine.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index) {
                selectedindex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran.png'),
                  ),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/Hadeth.png'),
                  ),
                  label: AppLocalizations.of(context)!.hadeth,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha.png'),
                  ),
                  label: AppLocalizations.of(context)!.sepha,
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settinge),
              ],
            ),
          ),
          body: tabs[selectedindex],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), Hadethtab(), Sabhatab(), Settings()];
}
