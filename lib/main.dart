import 'package:card_image/PictureCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
          body: ListView(
            children: [
              Picturecard(name: "Cartman", quote: "Respect mah authoritah", image: 'assets/images/cartman.webp'), //calling the card-creation method here to keep code DRY
              Picturecard(name: "Randy", quote: "Just gotta get a little bit of cancer Stan, tell mom it's okay", image: 'assets/images/randy.webp'),
              Picturecard(name: "Mr Slave", quote: "Oh Jesus Christ", image: 'assets/images/slave.webp')
            ],
      ),
    );
  }
}

