class BlogModel {
  final int? id;
  final String title;
  final String body;
  final String? image;

  BlogModel({
    this.id,
    required this.title,
    required this.body,
    this.image,
  });
}
