import 'package:flutter/material.dart';
import 'package:untitled10/quran/sura_details%20screen.dart';

class suraName extends StatelessWidget {
  String name;
  int index;

  suraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(suraDetailsScreen.routeName,
            arguments: suraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
