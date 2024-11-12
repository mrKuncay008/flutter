class Blog {
  final String title;
  final String author;
  final String content;
  final DateTime publishedDate;
  final String imageUrl;

  Blog({
    required this.title,
    required this.author,
    required this.content,
    required this.publishedDate,
    required this.imageUrl,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['Title'] ?? '',
      author: json['Author'] ?? '',
      content: json['Content'] ?? '',
      publishedDate:  DateTime.parse(json['Published Date']),
      imageUrl: json['Image URL'] ?? '',
    );
  }
}

