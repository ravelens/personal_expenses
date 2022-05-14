import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {

  final String text;
  final VoidCallback handler;

  const AdaptiveButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
    ? CupertinoButton(
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: handler)
    : FlatButton(
        onPressed: handler,
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        textColor: Theme.of(context).primaryColor,
      );
  }
}