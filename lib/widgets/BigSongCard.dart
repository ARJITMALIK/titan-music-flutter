import 'package:flutter/material.dart';

class BigSongCard extends StatelessWidget {
  const BigSongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Adjust the number of items
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 100.0
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        child: Container(
                          width: 100.0, // Adjust the width of each item
                          height: 100.0,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://djpunjab.com.se/upload_file/414/416/1/400x400/thumb_6520b321086fe.webp'),
                              fit: BoxFit
                                  .cover, // Choose the BoxFit that suits your needs
                            ),
                          ),
                        ),
                      ),
                      const Text(overflow: TextOverflow.ellipsis, maxLines: 1, "Meow meow meow")
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
