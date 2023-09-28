import 'package:flutter/material.dart';

///دا عملناه عشان نودي استايل لل content بتاعي
class iteamhadethDetails extends StatelessWidget {
  String content;

  iteamhadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}
