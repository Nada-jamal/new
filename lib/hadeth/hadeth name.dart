import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/My_them.dart';
import 'package:untitled10/hadeth/hadeth_details%20screen.dart';
import 'package:untitled10/quran/sura_details%20screen.dart';
import '../providers/app_config_provider.dart';
import 'hadeth_tab.dart';

class hadethname extends StatelessWidget {
  Hadeth hadeth;

  hadethname({
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          hadethDetailsScreen.routeName,
          arguments: hadeth,
        );
      },
      child: Text(
        hadeth.title,
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
