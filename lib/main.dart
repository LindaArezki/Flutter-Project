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
          children: const [
            ListTile(
              title: Text('First menu'),

              ),
            ListTile(
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

      ],)

    );
  }
}

