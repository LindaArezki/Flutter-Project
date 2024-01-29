
class Competences {

  final String name;
  final String description;
  final int pourcent;

  Competences({
  required this.name,
  required this.description,
  required this.pourcent,
});
  Competences.fromJson(Map<String, dynamic> json):
        name = json['name'] as String,
        description = json['description'] as String,
        pourcent = json['pour-cent'] as int;

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'pour-cent': pourcent
  };


}

List<Competences> listeCompetences = [
  Competences(name: "Comp 1", description: "      ", pourcent: 20),
];