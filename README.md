# elkareem_news

# 📰 Flutter News App

A beautifully designed News App built with Flutter that fetches and displays the latest headlines using a news API. The app is fast, responsive, and supports both Android and iOS platforms.

## 🚀 Features

- Latest news headlines by category (e.g., technology, sports, business)
- Clean and intuitive UI
- Pull-to-refresh
- fetches the description of any articles
- Online caching 
- Dark/Light theme support 
- Open news articles in a browser

## 📱 Screenshots

![Home Screen](assets/screenshots/homePage.png)
![Article View](assets/screenshots/descriptionPage.png)
## 📂 Folder Structure

```plaintext
lib/
├── data/            # Data layer (models, Hive, repositories)
├── domain/          # Business logic (entities, usecases)
└── presentation/    # UI (screens, widgets, state management)
└── main.dart                # App entry point
```

## 🧰 Technologies Used

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [dio](https://pub.dev/packages/dio)
- [webview_flutter](https://pub.dev/packages/webview_flutter) 
- [News API](https://newsapi.org/)

## 🔧 Getting Started

To run this project locally, follow these steps:

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio / VS Code
- An API key from [NewsAPI.org](https://newsapi.org/) 
## 🛠️ Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/kareemAlfara/News-app.git
   cd NoteApp
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate Hive type adapters :
   ```bash
   flutter packages pub run build_runner build
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## 👤 Author

- [Kareem Alfarra](https://github.com/kareemAlfara/)
- LinkedIn: [linkedin.com/in/kareem-elfara](https://www.linkedin.com/in/kareem-elfara-2aa767337/)

---
