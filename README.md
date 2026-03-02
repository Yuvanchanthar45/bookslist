# 📚 Book List App – Flutter Assignment

A simple Flutter application that displays a list of books with their titles and authors, built using Material Design widgets.

---

## Features

- 📖 Displays a list of books with **title** and **author**
- ➕ **Floating Action Button (FAB)** to add a new book to the list
- ⚡ State managed with `StatefulWidget` and `setState()`
- 🏗️ Efficient rendering using `ListView.builder`

---

## Project Structure

```
lib/
└── main.dart        # Entry point, all widgets and model in one file
    ├── MyApp        # Root MaterialApp widget
    ├── Book         # Model class (title, author)
    ├── BookList     # StatefulWidget – manages book list state
    └── _BookTile    # Private widget for each list row
```

---

## Requirements Coverage

| Requirement | Status |
|---|---|
| `Book` model class with `title` and `author` | ✅ |
| `BookList` as a `StatefulWidget` | ✅ |
| `List<Book>` managed inside state | ✅ |
| `ListView.builder` for rendering | ✅ |
| Each item shows title (main) + author (subtitle) | ✅ |
| FAB adds a new hardcoded book via `setState()` | ✅ |
| Material Design widgets | ✅ |

---

## Screenshot

> _Add a screenshot of the app running on your device or emulator below._

![App Screenshot](screenshots/app_screenshot.png)

---

## Getting Started

### Prerequisites
- Flutter SDK installed
- Android device/emulator connected

### Run the app
```bash
flutter pub get
flutter run
```

---

## How It Works

1. App opens with 3 pre-loaded books in the list.
2. Tap the **`+`** FAB to add *"Brave New World"* by *Aldous Huxley* to the list.
3. The list updates instantly via `setState()`.
