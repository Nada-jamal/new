import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled10/My_them.dart';
import 'package:untitled10/quran/iteam%20suraDetails.dart';

class suraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura Details Screen';

  @override
  State<suraDetailsScreen> createState() => _suraDetailsScreenState();
}

class _suraDetailsScreenState extends State<suraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset('assets/image/main_background.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.length == 0
              ? Center(child: CircularProgressIndicator())
              : Container(
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.06,
                    horizontal: MediaQuery.of(context).size.height * 0.05,
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: MyTheme.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return iteamSuraDetails(
                        content: verses[index],
                        index: index,
                      );
                    }),
                    itemCount: verses.length,
                  )),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class suraDetailsArgs {
  String name;
  int index;

  suraDetailsArgs({required this.name, required this.index});
}
