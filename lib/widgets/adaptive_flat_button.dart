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
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).textTheme.labelLarge?.color,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            child: Text(text),
            onPressed: handler,
          );
  }
}
