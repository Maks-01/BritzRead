import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final int progress;

  const BookCard({
    super.key,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: Colors.grey[900],
      child: ListTile(
        leading: const Icon(Icons.book, color: Colors.cyanAccent),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        subtitle: Text('$progress% прочитано', style: TextStyle(color: Colors.grey[400])),
        trailing: const Icon(Icons.chevron_right, color: Colors.cyanAccent),
        onTap: () {
          // TODO: Навигация к чтению книги
        },
      ),
    );
  }
}