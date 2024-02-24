import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key, required this.text, required this.iconName});

  final String text;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      iconName,
                      size: 25,
                    )),
                Text(text)
              ],
            )));
  }
}
