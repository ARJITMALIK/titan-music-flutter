import 'package:flutter/material.dart';
import 'pages/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
          brightness: Brightness.dark,
          primaryColor: Colors.grey,
          scaffoldBackgroundColor: Colors.transparent,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          bodyLarge: TextStyle(fontFamily: 'Poppins')
        ),
      ),

      home: const CoreWrapper(title: "meow meow meow"),
    );
  }
}
