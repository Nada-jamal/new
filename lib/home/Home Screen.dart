import 'package:flutter/material.dart';
import 'package:untitled10/hadeth/hadeth_tab.dart';
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
    return Stack(
      children: [
        Image.asset('assets/image/main_background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
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
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/icon_hadeth.png')),
                    label: 'hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/icon_sebha.png')),
                    label: 'sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/image/icon_radio.png')),
                    label: 'radio')
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [quranTab(), hedethTab(), sebhaTab(), radioTab()];
}
