import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/book_tile.dart';

/// The primary screen of the app.
///
/// Manages a [List<Book>] in its state and renders it
/// efficiently via [ListView.builder]. A [FloatingActionButton]
/// appends a new hardcoded book using [setState].
class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  // ── State ────────────────────────────────────────────────

  /// In-memory list of books displayed in the UI.
  final List<Book> _books = [
    const Book(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald'),
    const Book(title: 'To Kill a Mockingbird', author: 'Harper Lee'),
    const Book(title: '1984', author: 'George Orwell'),
    const Book(title: 'Pride and Prejudice', author: 'Jane Austen'),
    const Book(title: 'The Alchemist', author: 'Paulo Coelho'),
  ];

  // ── Actions ──────────────────────────────────────────────

  /// Appends a hardcoded [Book] to [_books] and schedules a rebuild.
  void _addBook() {
    setState(() {
      _books.add(
        const Book(
          title: 'Brave New World',
          author: 'Aldous Huxley',
        ),
      );
    });
  }

  // ── Builders ─────────────────────────────────────────────

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.library_books_outlined,
            size: 72,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            'No books yet.',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tap + to add your first book.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookList() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 12, bottom: 80),
      itemCount: _books.length,
      itemBuilder: (context, index) {
        return BookTile(
          book: _books[index],
          index: index,
        );
      },
    );
  }

  // ── Build ────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Book List'),
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(
            height: 1,
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
      ),
      body: _books.isEmpty ? _buildEmptyState() : _buildBookList(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addBook,
        icon: const Icon(Icons.add),
        label: const Text('Add Book'),
        tooltip: 'Add a new book',
      ),
    );
  }
}
