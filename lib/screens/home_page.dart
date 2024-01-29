import 'package:drivecompetence/data/comptences.dart';
import 'package:flutter/material.dart';

import '../widgets/skills.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Navbar'),
          leading: const CircleAvatar(
            child: Text('LA'),)

        ),

        body: ListView(
          children: [
            const ListTile(
              leading: CircleAvatar(
                child: Text('LA'),
              ),
            ),
            Skill(competence: listeCompetences[0]),
            Container(
              color: Colors.greenAccent,
              height: 100,
              padding: EdgeInsets.only(left:50),
              margin: EdgeInsets.symmetric(horizontal: 50),
              child:  Skill(competence: listeCompetences[0]),
            )
          ],)

    );
  }
}

