# 📁 News App

A Flutter news reader that fetches live top headlines from the NewsAPI and lets you browse articles by category.

## Overview

News App is a mobile application built with Flutter that pulls the latest US top headlines from the [NewsAPI](https://newsapi.org/) and presents them in a clean, card-based feed. Articles can be filtered by category and opened in an in-app web view for the full story.

## Features

- Live top headlines for the US, fetched from the NewsAPI `top-headlines` endpoint
- Category browsing: sports, business, technology, science, and entertainment
- Article cards with thumbnail image, title, and formatted publication date
- Article detail dialog with description, author, and publication date
- Open the full article in an in-app web view (`webview_flutter`)
- Pull-to-refresh on the home and category feeds
- State management with Provider (`ChangeNotifier`)

## Tech Stack

- Flutter / Dart (SDK `^3.9.2`)
- [dio](https://pub.dev/packages/dio) — HTTP client for the NewsAPI
- [provider](https://pub.dev/packages/provider) — state management
- [webview_flutter](https://pub.dev/packages/webview_flutter) `^4.0.7` — in-app article browser
- [intl](https://pub.dev/packages/intl) `^0.18.0` — date formatting
- [cupertino_icons](https://pub.dev/packages/cupertino_icons) `^1.0.8`

## Getting Started

### Prerequisites

- Flutter SDK (3.9.x or compatible)
- A NewsAPI API key (the app currently ships with a key hardcoded in `lib/services/articales_service.dart`)

### Run

```bash
flutter pub get
flutter run
```

## Notes

- The app targets the NewsAPI `top-headlines` endpoint for `country=us`.
- An API key is currently hardcoded in `lib/services/articales_service.dart`; for any public deployment it should be moved to a secure configuration (for example `--dart-define` or a backend proxy).
- The repository includes a committed `apk/` folder containing a nested, default Flutter project. This is a build artifact and should be removed from the repository (see below).

## Repository hygiene

- The `apk/` directory is a full, nested Flutter project (not a compiled APK) that was committed by accident. It duplicates the platform scaffolding and inflates the repository. It should be deleted and added to `.gitignore`.
- Because of the committed `linux/`, `macos/`, and `windows/` runner sources, GitHub's language detection may report a large share of C++ for this repository even though it is a Dart/Flutter project.