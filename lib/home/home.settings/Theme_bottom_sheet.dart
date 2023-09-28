import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/providers/app_config_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              ///dark
              provider.ChangeTheme(ThemeMode.dark);
            },
            child: provider.isDarkMode()
                ? getSelectedItemWidget(
                    AppLocalizations.of(context)!.dark, context)
                : getUnSelectedItemWidget(
                    AppLocalizations.of(context)!.dark, context),
          ),
          InkWell(
              onTap: () {
                ///ligth
                provider.ChangeTheme(ThemeMode.light);
              },
              child: provider.isDarkMode()
                  ? getUnSelectedItemWidget(
                      AppLocalizations.of(context)!.ligth, context)
                  : getSelectedItemWidget(
                      AppLocalizations.of(context)!.ligth, context)),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text, context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).primaryColor)),
          Icon(
            Icons.check,
            color: Theme.of(context).primaryColor,
            size: 25,
          ),
        ],
      ),
    );
  }

  Widget getUnSelectedItemWidget(String text, context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
