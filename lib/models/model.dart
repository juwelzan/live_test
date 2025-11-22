class Model {
  final int id;
  final String title;
  final String description;
  final int calories;

  Model({
    required this.id,
    required this.title,
    required this.description,
    required this.calories,
  });
  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json["id"],
      title: json["title"],
      description: json['description'],
      calories: json['calories'],
    );
  }
}
