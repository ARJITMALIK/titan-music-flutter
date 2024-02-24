import 'package:flutter/material.dart';

class GenreStrip extends StatelessWidget {
  const GenreStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 25, bottom: 25),
        itemCount: 10, // Adjust the number of items
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            color: Color.fromARGB(100, 100, 100, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)), // Adjust the border radius as needed
              side: BorderSide(color: Color.fromARGB(220, 100, 100, 100), width: 2.0), // Set the border color and width
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 12.0, bottom: 12.0),
              child: Text('Hello World!'),
            ),
          );
        },
      ),
    );
  }
}
