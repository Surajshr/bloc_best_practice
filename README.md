
A Flutter application showcasing various implementation patterns and features with clean architecture.

## Features

### 1. Dashboard
- Central hub with feature cards
- Easy navigation to all app features
- Beautiful grid layout with custom icons

### 2. Todo List
- Local storage using SQLite
- CRUD operations with BLoC pattern
- Clean architecture implementation
- Pull-to-refresh functionality

### 3. Dynamic Form
- Multi-step form with validation
- Dynamic form fields (text, dropdown, toggle)
- Form data review and submission
- Clean architecture with BLoC pattern

### 4. E-commerce Product List
- Product listing with infinite scrolling
- Local favorites storage using SQLite
- Category filtering and search
- Clean architecture with BLoC pattern

### 5. Device Info (Method Channel)
- Native platform communication
- Battery level, device model, charging status
- System time with DateTime parsing
- Platform-specific native button using PlatformView

### 6. Nested Navigation
- Persistent bottom navigation bar
- Independent navigation stacks per tab
- Nested routing with GoRouter ShellRoute
- Detail screens within each tab

## Architecture & Approach

### State Management
- **BLoC Pattern** with flutter_bloc
- **Freezed** for immutable state classes
- **GetIt** for dependency injection
- **Clean Architecture** with separate data, domain, and presentation layers

### Navigation
- **GoRouter** for declarative routing
- **ShellRoute** for nested navigation
- **Centralized route management** with RouteName constants
- **Type-safe navigation** with route constants

### Project Structure
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
│   ├── dashboard/        # Dashboard feature
│   ├── todo/            # Todo feature
│   ├── dynamic_form/    # Dynamic form feature
│   ├── ecommerce/       # E-commerce feature
│   ├── device_info/     # Device info with MethodChannel
│   └── nested_navigation/ # Nested navigation feature
├── route/               # Routing configuration
└── widgets/             # Shared widgets
```

## Extra Features

### Flavor Setup
- **Android flavor configuration** for different environments
- **Development, UAT, and Production** builds
- **Environment-specific configurations**
- **Separate main files** for each flavor

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
# Development
flutter run --flavor dev -t lib/main_dev.dart

# UAT
flutter run --flavor uat -t lib/main_uat.dart

# Production
flutter run --flavor prod -t lib/main_prod.dart
```

Flutter Version used:
3.32.7



