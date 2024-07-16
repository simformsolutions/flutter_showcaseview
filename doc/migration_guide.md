## Migration guide for release 3.0.0
Removed builder widget from `ShowCaseWidget` and replaced it with builder function

Before:
```dart
ShowCaseWidget(
  builder: Builder(
    builder : (context) => Somewidget()
  ),
),
```

After:
```dart
ShowCaseWidget(
  builder : (context) => Somewidget(),
),
```