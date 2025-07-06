// Модель книги
class BookModel {
  final String title;
  final String author;
  final String coverUrl;
  final int progress;

  BookModel({
    required this.title,
    required this.author,
    required this.coverUrl,
    required this.progress,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String,
      progress: json['progress'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'coverUrl': coverUrl,
      'progress': progress,
    };
  }
}