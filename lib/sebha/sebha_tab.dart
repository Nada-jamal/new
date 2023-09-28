import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/My_them.dart';

import '../providers/app_config_provider.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int counter = 0;
  List<String> Tasbeh = ['الله اكبر', 'الحمد لله', 'الله اكبر'];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              addOne();
            },
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 0),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image/sebha_log.png',
                    color: provider.isDarkMode()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryLight,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Image.asset('assets/image/head_sebha.png',
                        color: provider.isDarkMode()
                            ? MyTheme.yellowColor
                            : MyTheme.primaryLight),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('عدد التسبيحات',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: provider.isDarkMode()
                      ? MyTheme.whiteColor
                      : MyTheme.blackColor)),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: provider.isDarkMode()
                  ? MyTheme.primaryDark
                  : MyTheme.primaryLight,
            ),
            width: 30,
            height: 40,
            child: Center(
                child: Text('$counter',
                    style: TextStyle(
                      color: provider.isDarkMode()
                          ? MyTheme.whiteColor
                          : MyTheme.blackColor,
                    ))),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: provider.isDarkMode()
                      ? MyTheme.yellowColor
                      : MyTheme.primaryLight),
              child: Text(
                Tasbeh[counter % Tasbeh.length],
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: provider.isDarkMode()
                        ? MyTheme.blackColor
                        : MyTheme.whiteColor),
              ))
        ],
      ),
    );
  }

  void addOne() {
    counter++;
    setState(() {});
  }
}
