import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Navbar'),
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            const DrawerHeader(
              padding: EdgeInsets.only(left:50),
              child: Text('Welcome on the swandwich menu',style: TextStyle(fontSize: 25)),
            ),
            ListTile(
              leading: const CircleAvatar(
                  child: Text('First'),
                ),
                title: const Text('First menu 1',style: TextStyle(fontSize: 25, color:Colors.teal),),
                trailing: IconButton(onPressed:() {}, icon: const Icon(Icons.access_alarm)),
              ),
            const ListTile(
              title: Text('second menu'),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Text('SP'),
            ),
            title: const Text('ITEM 1',style: TextStyle(fontSize: 60, color:Colors.teal),),
            trailing: IconButton(onPressed:() {}, icon: const Icon(Icons.access_alarm)),
          ),
          const Text('ITEM 2',style:TextStyle(fontSize: 60, color:Colors.greenAccent),),
          const Text('ITEM 2',style: TextStyle(fontSize: 60, color:Colors.cyan),),
          const Image(image: AssetImage('images/rat.jpeg'),),
          Container(
            color: Colors.greenAccent,
            height: 100,
            padding: EdgeInsets.only(left:50),
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: const Text('Tete du container'),
          )

      ],)

    );
  }
}

