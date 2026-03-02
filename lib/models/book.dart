/// Represents a single book entity.
///
/// All fields are immutable and non-nullable.
class Book {
  final String title;
  final String author;

  const Book({
    required this.title,
    required this.author,
  });

  @override
  String toString() => 'Book(title: $title, author: $author)';
}
