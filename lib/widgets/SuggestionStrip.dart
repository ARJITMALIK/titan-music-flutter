import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meow/widgets/SuggestionCard.dart';

class SuggestionStrip extends StatelessWidget {
  const SuggestionStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Expanded(
                    child: SuggestionCard(
                        iconName: Icons.library_music, text: "New Releases")),
                Expanded(
                    child: SuggestionCard(
                        iconName: Icons.trending_up, text: "Top trending"))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: SuggestionCard(
                        iconName: Icons.mood, text: "Mood and genres")),
                Expanded(
                    child: SuggestionCard(
                        iconName: Icons.podcasts, text: "Podcasts"))
              ],
            ),
          ],
        ));
  }
}
