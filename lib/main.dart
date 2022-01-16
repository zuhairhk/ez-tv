import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Card Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title = 'Demo'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildCard(),
                  buildCard(),
                ],
              )),
        ));
  }
}

Card buildCard() {
  var heading = 'Test Heading';
  var subheading = 'Subheading Test';
  var supportingText = 'Show Click';
  var cardImage = NetworkImage(
      'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/Eren-Shows-His-Hand-In-Attack-On-Titan.jpg');

  return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
            title: Text(heading),
            subtitle: Text(subheading),
            trailing: Icon(Icons.favorite_outline),
          ),
          Container(
            height: 400.0,
            child: Ink.image(
              image: cardImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: Text(supportingText)),
          ButtonBar(
            children: [
              TextButton(
                child: const Text('Child Text'),
                onPressed: () {/* ... */},
              ),
              TextButton(
                child: const Text('Learn'),
                onPressed: () {/* ... */},
              )
            ],
          )
        ],
      ));
}
