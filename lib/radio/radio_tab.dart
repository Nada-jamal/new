import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/My_them.dart';

import '../providers/app_config_provider.dart';

class radioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Center(child: Image.asset('assets/image/radio_image.png')),
        Text(
          'اذاعة القران الكريم',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.fast_forward_rounded,
                    size: 35,
                    color: provider.isDarkMode()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryLight)),
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow_rounded,
                    size: 50,
                    color: provider.isDarkMode()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryLight)),
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.fast_forward_rounded,
                    size: 35,
                    color: provider.isDarkMode()
                        ? MyTheme.yellowColor
                        : MyTheme.primaryLight)),
          ],
        )
      ],
    );
  }
}
