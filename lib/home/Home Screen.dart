import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/hadeth/hadeth_tab.dart';
import 'package:untitled10/home/home.settings/settings_%20tab.dart';
import 'package:untitled10/providers/app_config_provider.dart';
import 'package:untitled10/quran/quran_tab.dart';
import 'package:untitled10/radio/radio_tab.dart';
import 'package:untitled10/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/icon_quran.png')),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/icon_hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/icon_sebha.png')),
                  label: AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/icon_radio.png')),
                  label: AppLocalizations.of(context)!.radio,
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings)
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    quranTab(),
    hedethTab(),
    sebhaTab(),
    radioTab(),
    settingsTab()
  ];
}
