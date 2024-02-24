import 'package:flutter/material.dart';

class ListenAgain extends StatelessWidget {
  const ListenAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/D4E03AQHZNUkoy3bleg/profile-displayphoto-shrink_200_200/0/1631956275217?e=2147483647&v=beta&t=bgFjdc7Qrut-gVRH5_pXoE64siKuzmSAlC5Fx1rlb0g'),
          ),
        ),

        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ARJIT MALIK"),
              Text("Listen Again", style: TextStyle(fontSize: 20),)
            ],
          ),
        )

      ],
    );
  }
}
