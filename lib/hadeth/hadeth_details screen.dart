import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/My_them.dart';
import 'package:untitled10/hadeth/hadeth_tab.dart';
import 'package:untitled10/hadeth/iteam%20hadethDetails.dart';

import '../providers/app_config_provider.dart';

class hadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura hadeth Screen';

  @override
  State<hadethDetailsScreen> createState() => _suraDetailsScreenState();
}

class _suraDetailsScreenState extends State<hadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset('assets/image/main_background_dark.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill)
            : Image.asset('assets/image/main_background.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.title}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.06,
                horizontal: MediaQuery.of(context).size.height * 0.05,
              ),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: provider.isDarkMode()
                      ? MyTheme.primaryDark
                      : MyTheme.whiteColor,
                  borderRadius: BorderRadius.circular(20)),
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return iteamhadethDetails(content: args.content[index]);
                }),
                itemCount: args.content.length,
              )),
        ),
      ],
    );
  }
}
