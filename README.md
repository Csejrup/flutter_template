# Flutter Template

## Architecture
This template project uses clean architecture.

Clean Architecture is an architectural pattern for structuring and organizing code in a way that maximizes separation of concerns, modularity, maintainability, and testability. It is based on the SOLID principles and aims to create code that is easy to read, easy to change, and easy to test. In Flutter, the Clean Architecture pattern involves a layered architecture that consists of three layers: 

The Presentation layer - where UI components and widgets are located. This layer is responsible for displaying data to the user and handling user interactions.

The Domain layer - where the business logic and use cases are located. This layer contains the core logic of the application and is independent of any UI or database implementation details.

The Data layer - where the implementation details of retrieving and saving data are located. This layer interacts with external sources such as APIs and databases.

By separating concerns into these layers, it becomes easier to modify and test individual parts of the application without affecting the other layers. This approach also allows for increased scalability and maintainability of the codebase.
## Setup

Copy the repo and get started!

First thing is to search and replace "flutter_template" with your own project name. e.g "Sous Vide Recipes"

This template uses flavors to switch between different environments for the utilization of different Supabase projects. 
Create a "vars" folder in root and create your .env files for dev, stage and prod environments

Run 'flutter pub run build_runner build'

# Run the app in the dev flavor
flutter run --flavor dev -t lib/main_dev.dart

# Build the app in the prod flavor
flutter build apk --flavor prod -t lib/main_prod.dart
# License

This application is released under the [MIT license](LICENSE). You can use the code for any purpose, including commercial projects.

[![license](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
