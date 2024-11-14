class TestApi {
  final int id;
  final String title;
  final String tags;
  final String topics;
  final String author;
  final String image_base64;

  TestApi({
    required this.id,
    required this.title,
    required this.tags,
    required this.topics,
    required this.author,
    required this.image_base64,
  });

  // Method untuk membuat instance dari JSON
  factory TestApi.fromJson(Map<String, dynamic> json) {
    return TestApi(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      tags: json['tags'] ?? '',
      topics: json['topics'] ?? '',
      author: json['author'] ?? '',
      image_base64: json['image_base64'] ?? '', // Sesuaikan dengan field yang ada pada API
    );
  }
}
