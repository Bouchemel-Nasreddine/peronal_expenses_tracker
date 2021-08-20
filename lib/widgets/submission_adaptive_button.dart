import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmissionAdaptiveButton extends StatelessWidget {
  final String text;
  final void Function() handler;

  SubmissionAdaptiveButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            onPressed: handler,
          )
        : ElevatedButton(
            onPressed: handler,
            child: Text(text),
          );
  }
}
