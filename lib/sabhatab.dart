import 'package:flutter/material.dart';

class Sabhatab extends StatefulWidget {
  @override
  State<Sabhatab> createState() => _SabhatabState();
}

class _SabhatabState extends State<Sabhatab> {
  int tasbeahcounter = 0;
  int index = 0;
  double angel = 0;
  List<String> tasbeehList = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله",
    "سبحان الله وبحمده",
    "سبحان الله العظيم",
    "أستغفر الله العظيم وأتوب إليه",
    "اللهم صلِّ وسلم على نبينا محمد",
    "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم"
  ];

  onTap() {
    tasbeahcounter++;
    angel += 3;
    if (tasbeahcounter == 33) {
      tasbeahcounter = 0;
      index++;
    }
    if (index == tasbeehList.length) {
      index = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Image.asset('assets/images/head of seb7a.png'),
              ),
              GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .040,
                      bottom: 26),
                  child: Transform.rotate(
                      angle: angel,
                      child: Image.asset('assets/images/body of seb7a.png')),
                ),
              )
            ],
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              '$tasbeahcounter',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              tasbeehList[index],
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
