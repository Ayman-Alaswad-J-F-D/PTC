class CategoryModel {
  final String name;
  final String image;

  const CategoryModel({required this.name, required this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      name: json['name'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toMap() => {'name': name, 'image': image};

  static List<CategoryModel> extractDataList(List data) {
    return data.map((e) => CategoryModel.fromJson(e)).toList();
  }

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode;
}
