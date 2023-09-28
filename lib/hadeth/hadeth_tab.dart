import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled10/hadeth/hadeth%20name.dart';

class hedethTab extends StatefulWidget {
  @override
  State<hedethTab> createState() => _hedethTabState();
}

class _hedethTabState extends State<hedethTab> {
  List<Hadeth> hadethLines = [];

  @override
  Widget build(BuildContext context) {
    if (hadethLines.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/image/ahadeth_log.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        hadethLines.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 3,
                    );
                  },
                  itemBuilder: (context, index) {
                    return hadethname(hadeth: hadethLines[index]);
                  },
                  itemCount: hadethLines.length,
                ),
              ),
      ],
    );
  }

  void loadHadethFile() async {
    String hadethContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList = hadethContent.split('#\r\n'); //50
    for (int i = 0; i < ahadethList.length; i++) {
      List<String> ahadethLines = ahadethList[i].split('\n'); //1
      String title = ahadethLines[0];
      ahadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: ahadethLines);
      hadethLines.add(hadeth);
      setState(() {});
    }
  }
}

///class data
class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
