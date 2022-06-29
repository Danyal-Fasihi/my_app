import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Danyal's App",
      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'Personal Info'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(

        title: Text(widget.title),
        backgroundColor: Colors.black12,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
            children: const <Widget>[
            MyCustomForm(),
            MyStatelessWidget(),
      ],
    ));
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(

            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5,),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'First Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Last Name',

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email address',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Phone Number',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Address Line 1',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Address Line 2',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'City',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Zip CoOde',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'State',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 15, width: 100,),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
              primary: Colors.white38,
            ),
            onPressed: () {},
            child: const Text('     Change Password        >'),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.deepPurple,
                          Colors.purpleAccent,
                          Colors.blue,
                          Colors.lightBlue,
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('                   Save                   '),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

