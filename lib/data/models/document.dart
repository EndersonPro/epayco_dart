class Document {
  final int? id;
  final String? name;
  final String? cod;
  final String? description;

  Document({
    this.id,
    this.name,
    this.cod,
    this.description,
  });

  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'cod': cod,
      'description': description,
    };
  }
}
