# Application.

This is a test application created for learning and practice, using a clean architecture.

## Project description.

This application is intended for:
- Exploring the principles of **Clean Architecture**;
- Practising concepts such as **BLoC**, **use cases**, **data transfer objects (DTOs)** and **layers of architecture**;
- Interacting with external **API** to get data (CoinGecko API is used).

The application demonstrates a list of cryptocurrencies retrieved from the API, using the following technologies and approaches.

## The architecture of folders, and files.

```
core/
│
├── data/                      // Data handling layer (APIs, models, repositories).
├── domain/                    // Business logic (entities, interfaces, use cases).
├── utils/                     // Utilities, and auxiliary functions.
│
dependencies/                  // Dependency management.
│
presentation/                  // UI-layer (widgets, pages, state management).
│   ├── coins/                 // Coin handling components.
│   │   ├── bloc/              // State management logic.
│   │   ├── view/              // Widgets, and views.
│   │   └── page.dart 
│   └── widgets/               // Common UI components.
│
application.dart               // Initialisation of the application.
main.dart                      // Point of entry.
observer.dart                  // An observer of events.
```

## Setup, and run.

**Clone the repository:**
```
gh repo clone whitedxke/application
```

**Navigate to the project folder:**
```
cd application
```

**Set dependencies:**
```
flutter pub get
flutter pub upgrade
```

**Make sure, that the necessary tools are installed:**
```
flutter doctor
```

**Start the application:**
```
flutter build ios
```

## Documentation.

- For more information about **Clean Architecture**, read this article [The Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html);
- For more information about **BLoC and its usage**, visit the [official BLoC website](https://bloclibrary.dev/).
