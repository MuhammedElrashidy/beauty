# Flutter Project Development Guidelines

## Table of Contents
1. [Project Architecture](#project-architecture)
2. [Theme Management](#theme-management)
3. [Localization](#localization)
4. [Asset Management](#asset-management)
5. [Network Layer](#network-layer)
6. [State Management](#state-management)
7. [Code Style](#code-style)
8. [Commenting Standards](#commenting-standards)
8. [GitHub Workflow](#github-workflow)
## Project Architecture

### Feature-First Approach
We follow a feature-based architecture where each feature is self-contained and can be developed, tested, and maintained independently. The domain layer is optional and should only be used when business logic complexity warrants it.

### Directory Structure
```
lib/
├── core/                      # Core functionality used across the app
│   ├── constants/            # App-wide constants
│   ├── helpers/              # helper functions that fasten development process
│   ├── network/              # Network clients and interceptors
│   ├── theme/                # App theming and styling
│   ├── routing/              # Holds routing files
│   ├── extensions/           # Holds all extensions add to 
│   └── services/             # Third party services integrated with app
│
├── features/                 # Feature modules (each feature is independent)
│   └── feature_name/         # Feature name (e.g., 'auth', 'profile')
│       ├── data/             # Data layer (required)
│       │   ├── data_sources/  # Local and remote data sources
│       │   ├── models/       # Data transfer objects (DTOs)
│       │   └── repositories/ # Implementation of repository contracts
│       │
│       ├── domain/           # Domain layer (optional)
│       │   ├── entities/     # Business objects
│       │   ├── repositories/ # Repository interfaces
│       │   └── usecases/     # Business logic components
│       │
│       ├── presentation/     # UI Layer
│       │   ├── cubit/        # State management
│       │   └── ui/           # All UI components
│       │       ├── pages/    # Full page widgets
│       │       └── widgets/  # Reusable UI components
│       │
│       └── utils/            # Feature-specific utilities
│           ├── extensions/   # Dart extensions
│           ├── helpers/      # Helper functions
│           └── validators/   # Input validators

```
### When to Use Domain Layer
Include the domain layer when:
- The feature has complex business logic
- The same business logic is used across multiple features
- You need to separate business rules from UI and data layers

For simple features, you can omit the domain layer and place business logic directly in the presentation layer.

## Theme Management

### Color Management
- Use `ColorModel` for theme-dependent colors
- Define colors in `custom_color.dart`
- Access colors using context: `CustomColor.primaryColor.color`
- Add color values in `app_theme.dart`

### Theme Configuration
- Define themes in `app_theme.dart`
- Use `ThemeCubit` for theme switching
- Access theme using `Theme.of(context)`

## Localization

### Setup
1. Add `flutter_localizations` to `pubspec.yaml`
2. Create `l10n.yaml` in root directory
3. Create `app_en.arb` and other language files in `lib/l10n/`

### Usage
```dart
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Text(AppLocalizations.of(context)!.helloWorld);
```

## Asset Management

### Adding Assets
1. Add assets to `assets/` directory
2. Update `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/png_images/
    - assets/svg_images/
    - assets/icons/
    - assets/fonts/
```

### Using Assets
Add assets to its correct place then add `core/constants/app_assets.dart` add your icon as static variable

## Network Layer

Make each query for data layer return `Either<Failure,dynamic>`

## State Management

### Cubit Pattern
- Use `flutter_bloc` for state management
- Each feature has its own cubit
- Handle all states (initial, loading, success, error)

### Example Cubit
```dart
class ExampleCubit extends Cubit<ExampleState> {
  final ExampleRepository repository;
  
  ExampleCubit(this.repository) : super(ExampleInitial());
  
  Future<void> fetchData() async {
    emit(ExampleLoading());
    Either<Failure,dynamic> result = repository.getData();
    if(result.isLeft())
      emit(ExampleError());
    else 
      emit(ExampleSuccess());
  }
}
```

## Code Style

### Naming Conventions
- Files: `snake_case.dart`
- Classes: `PascalCase`
- Variables and functions: `camelCase`
- Constants: `UPPER_SNAKE_CASE`
- Private members: `_privateMember`

### File Level
- File names should match the main class inside.
- Limit file size to 200 lines; larger files must have justification.

### Function Level
- Use descriptive function names.
- Employ named parameters for clarity.
- Clearly define the return type.
- Handle errors before returning values.
- Keep function size between 5–10 instructions; larger functions must have justification.
- Avoid deeply nested code.
- Make private functions inaccessible from outside.

### General Notes
- Avoid hard-coded values; use variables.
- Use enumerations for fixed sets of values.

### Model Class
- Include variables and constructors.
- Use static constants for database keys.
- Provide functions to convert data to/from JSON.
   - **Example**:
     ```dart
     class SingleValueTrackingModel<T> {
       List<T> values;
       List<Timestamp> timestamps;
     
       SingleValueTrackingModel({required this.values, required this.timestamps});
     
       static const String VALUES = 'Values';
       static const String TIMESTAMPS = 'Timestamps';
     
       Map<String, dynamic> toMap() {
         return {
           VALUES: values,
           TIMESTAMPS: timestamps,
         };
       }
     
       factory SingleValueTrackingModel.fromMap(Map<String, dynamic> map) {
         return SingleValueTrackingModel(
           values: List<T>.from(map[VALUES]),
           timestamps: List<Timestamp>.from(map[TIMESTAMPS]),
         );
       }
     }
     ```

## Commenting Standards

### General Guidelines
1. **Clarity**: Comments should be concise and clear.
2. **Consistency**: Use the same style and format throughout.
3. **Avoid Obvious Comments**: Explain "why" rather than "what."
4. **Update Comments**: Keep comments relevant to code changes.

### Documentation Guidelines

1. **Class-Level**:
   - Document:
     - Class name
     - Purpose
     - Key attributes and methods
   - **Example**:
     ```dart
     /// ************************* FILE INFO *************************** ///
     /// File Name: clients_repository.dart
     /// Purpose: Contains the client repository class.
     /// Author: Mohamed Elrashidy
     /// Created At: 11/1/2025
     ```

2. **Method-Level**:
   - Document:
     - Method name
     - Purpose
     - Parameters
     - Return value
     - Exceptions
   - **Example**:
     ```dart
     /// function name: [updateCompanyModel]
     ///
     /// purpose: update company model with the new data from the request entity
     ///
     /// parameters:
     ///            [CompanyModel] companyModel: the company model that will be updated
     ///            [RequestEntity] requestEntity: the request entity that contains the new data
     ///
     /// return type: [Future<Either<Failure, dynamic>>] - return error if failed to update the company model or
     ///              return null if the update is successful
     ```

3. **Function-Level**:
   - Similar structure to methods.

4. **Inline Comments**:
   - Use sparingly for complex logic.
   - Avoid for self-explanatory code.

5. **TODO Comments**:
   - Mark incomplete sections.
   - Include the author's name and date.

   **Example**:
   ```dart
   // TODO: Refactor this method for better efficiency (John, 2025-01-12)
   ```
- Classes: `PascalCase`
- Variables: `camelCase`
- Constants: `UPPER_SNAKE_CASE`



## GitHub Workflow

### Branching Strategy

We follow a modified Git Flow with three main branches:

1. `main` - Production environment
   - Always stable and production-ready
   - Protected branch (direct pushes disabled)
   - Only updated via pull requests from `staging`

2. `staging` - Testing/Staging environment
   - Used for pre-production testing
   - Protected branch (direct pushes disabled)
   - Updated via pull requests from `development`

3. `development` - Development environment
   - Main development branch
   - All feature branches are merged here
   - Protected branch (direct pushes disabled)

### Feature Branch Naming

Create branches from `development` using the following prefixes:

- `feature/` - For new features (e.g., `feature/user-authentication`)
- `update/` - For updates to existing features (e.g., `update/payment-flow`)
- `bugfix/` - For bug fixes (e.g., `bugfix/login-validation`)

### Pull Request Process

1. **Create a Feature Branch**
   ```bash
   git checkout development
   git pull origin development
   git checkout -b feature/your-feature-name
   ```

2. **Make Your Changes**

3. **Commit Your Changes**
   ```bash
   git add --all.
   git commit -m "feature: add new feature"
   git push origin feature/your-feature-name
   ```
   
   Commit message format:
   - `feature:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation changes
   - `style:` for formatting changes
   - `refactor:` for code refactoring

4. **Create a Pull Request**
   - Target the `development` branch
   - Add a descriptive title and description
   - Reference any related issues
   - Request reviews from team members


