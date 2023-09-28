import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/My_them.dart';
import 'package:untitled10/hadeth/hadeth_details%20screen.dart';
import 'package:untitled10/home/Home%20Screen.dart';
import 'package:untitled10/providers/app_config_provider.dart';
import 'package:untitled10/quran/sura_details%20screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MYApp()));
}

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        suraDetailsScreen.routeName: (context) => suraDetailsScreen(),
        hadethDetailsScreen.routeName: (context) => hadethDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.appTheme,
    );
  }
}
