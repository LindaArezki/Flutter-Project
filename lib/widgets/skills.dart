import 'package:flutter/material.dart';
import '../data/comptences.dart';

class Skill extends StatelessWidget {
  final Competences competence;
  const Skill({Key? key, required this.competence}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Text(competence.name)
          ]
      ),
    );
  }
}
