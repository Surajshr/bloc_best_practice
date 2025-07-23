# Varosha App

A Flutter application showcasing various implementation patterns and features.

## Features

### 1. Todo List
- Local storage using SQLite
- CRUD operations
- Clean architecture implementation
- BLoC pattern for state management

### 2. Dynamic Form
- Multi-step form with validation
- Dynamic form fields (text, dropdown, toggle)
- Form data review and submission
- Clean architecture with BLoC pattern

### 3. E-commerce Product List
- Infinite scrolling product list
- Local favorites storage using SQLite
- Category filtering
- Search functionality (In Progress)
- Clean architecture with BLoC pattern

## Project Structure

```
lib/
├── app/                    # App initialization and configuration
├── core/                   # Core functionality and shared code
│   ├── constants/         # App-wide constants
│   ├── di/               # Dependency injection setup
│   ├── services/         # Common services (storage, network)
│   ├── theme/           # App theme configuration
│   └── utils/           # Utility functions
├── features/             # Feature modules
│   ├── todo/            # Todo feature
│   ├── dynamic_form/    # Dynamic form feature
│   └── ecommerce/       # E-commerce feature
└── widgets/             # Shared widgets
```

## Setup Instructions

1. Clone the repository:
```bash
git clone [repository-url]
cd varosha_app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the code generation:
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. Run the app:
```bash
flutter run
```

## Remaining Tasks

### 1. Search Functionality
- [ ] Implement search in E-commerce feature
- [ ] Add search debouncing
- [ ] Add search history
- [ ] Implement search suggestions

### 2. Method Channel Implementation
- [ ] Setup native code structure
- [ ] Implement platform-specific code
- [ ] Create Flutter-native bridge
- [ ] Add example functionality

### 3. Nested Bottom Navigation
- [ ] Design navigation structure
- [ ] Implement persistent bottom navigation
- [ ] Handle nested navigation states
- [ ] Maintain UI state across navigation

## Architecture

The project follows Clean Architecture principles with the following layers:
- **Data Layer**: Repositories, Data Sources
- **Domain Layer**: Entities, Use Cases
- **Presentation Layer**: BLoC, UI Components

### State Management
- BLoC pattern using flutter_bloc
- Freezed for immutable state classes
- GetIt for dependency injection

### Storage
- SQLite for structured data
- Shared Preferences for simple key-value storage

### UI Components
- Custom reusable widgets
- Responsive design using ScreenUtil
- Consistent text styling with BuildText widget

## Dependencies

Key packages used in the project:
- flutter_bloc: State management
- get_it: Dependency injection
- freezed: Code generation
- sqflite: Local database
- go_router: Navigation
- flutter_screenutil: Responsive design

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
