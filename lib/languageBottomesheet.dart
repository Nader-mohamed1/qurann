import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:qurann/appcolors.dart';
import 'package:qurann/provider/addconfingprovider.dart';

class Languagebottomesheet extends StatefulWidget {
  const Languagebottomesheet({super.key});

  @override
  State<Languagebottomesheet> createState() => _LanguagebottomesheetState();
}

class _LanguagebottomesheetState extends State<Languagebottomesheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfingprovider>(context);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.chengeLanguage('en');
              },
              child: provider.applanguage == 'en'
                  ? getclectedItemWidget(AppLocalizations.of(context)!.english)
                  : getunslecteditremwidget(
                      AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                provider.chengeLanguage('ar');
              },
              child: provider.applanguage == 'ar'
                  ? getclectedItemWidget(AppLocalizations.of(context)!.arabic)
                  : getunslecteditremwidget(
                      AppLocalizations.of(context)!.arabic))
        ],
      ),
    );
  }

  Widget getclectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.primaryLightcolor),
        ),
        Icon(
          Icons.check,
          color: AppColors.primaryLightcolor,
          size: 35,
        )
      ],
    );
  }

  Widget getunslecteditremwidget(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
