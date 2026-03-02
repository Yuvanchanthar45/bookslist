import 'package:flutter/material.dart';
import '../models/book.dart';

/// A reusable list-row widget that displays a single [Book].
///
/// Shows a numbered [CircleAvatar], bold title, author subtitle,
/// and a trailing book icon. All values come from the theme.
class BookTile extends StatelessWidget {
  /// The book to display.
  final Book book;

  /// The 0-based position in the list (used for the avatar number).
  final int index;

  const BookTile({
    super.key,
    required this.book,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: CircleAvatar(
          backgroundColor: colorScheme.primaryContainer,
          child: Text(
            '${index + 1}',
            style: textTheme.labelLarge?.copyWith(
              color: colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          book.title,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            book.author,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        trailing: Icon(
          Icons.menu_book_rounded,
          color: colorScheme.primary,
        ),
      ),
    );
  }
}
