import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qurann/appcolors.dart';
import 'package:qurann/iteamsouradetals.dart';

class SouraDetelsScreen extends StatefulWidget {
  static const String routName = 'souradetils';

  @override
  State<SouraDetelsScreen> createState() => _SouraDetelsScreenState();
}

class _SouraDetelsScreenState extends State<SouraDetelsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SouraDtelsArgs;
    if (verses.isEmpty) {
      loadfiles(args.index);
    }
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
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryLightcolor,
                ),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ItemSoraNAME(
                    content: verses[index],
                    index: index,
                  );
                },
                itemCount: verses.length,
              ),
      ),
    ]);
  }

  void loadfiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    content.split('\n');
    List<String> lines = content.split('\n');

    verses = lines;
    setState(() {});
  }
}

class SouraDtelsArgs {
  String name;
  int index;

  SouraDtelsArgs({required this.name, required this.index});
}
