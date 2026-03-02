import 'package:flutter/material.dart';
import 'screens/book_list_screen.dart';

/// App entry point.
void main() {
  runApp(const MyApp());
}

/// Root widget – configures [MaterialApp] with a Material 3 theme.
///
/// Delegates all UI and state logic to [BookListScreen].
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const BookListScreen(),
    );
  }
}
