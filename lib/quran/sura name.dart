import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/My_them.dart';
import 'package:untitled10/providers/app_config_provider.dart';
import 'package:untitled10/quran/sura_details%20screen.dart';

class suraName extends StatelessWidget {
  String name;
  int index;

  suraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(suraDetailsScreen.routeName,
            arguments: suraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: provider.isDarkMode()
            ? Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: MyTheme.whiteColor)
            : Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: MyTheme.blackColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
