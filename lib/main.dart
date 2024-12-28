import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:qurann/HomeSreen.dart';
import 'package:qurann/MYtheemdata.dart';
import 'package:qurann/hadethdetilsscreen.dart';
import 'package:qurann/provider/addconfingprovider.dart';
import 'package:qurann/souradetilsscreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Appconfingprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfingprovider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homesreen.routName,
      routes: {
        Homesreen.routName: (context) => Homesreen(),
        SouraDetelsScreen.routName: (context) => SouraDetelsScreen(),
        HadethDetelsScreen.routName: (context) => HadethDetelsScreen(),
      },
      theme: MyThemeData.lightmode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.applanguage),
    );
  }
}
