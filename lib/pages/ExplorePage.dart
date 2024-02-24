import 'package:flutter/material.dart';
import 'package:meow/widgets/SuggestionCard.dart';
import 'package:meow/widgets/SuggestionStrip.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.4],
          colors: [
            Colors.purple,
            Colors.black
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Explore Music", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D4E03AQHZNUkoy3bleg/profile-displayphoto-shrink_200_200/0/1631956275217?e=2147483647&v=beta&t=bgFjdc7Qrut-gVRH5_pXoE64siKuzmSAlC5Fx1rlb0g'),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        body: const Column(
            children: <Widget>[
              SuggestionStrip(),
            ]
        ),
      ),
    );
  }
}
