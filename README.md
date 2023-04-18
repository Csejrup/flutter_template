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

## Auto Router

This project uses the auto_route package for defining and auto generating routes. [auto_route](https://pub.dev/packages/auto_route)
Use the @MaterialAutoRouter annotation to annotate a class that extends AutoRouter. This will generate a router that can be used for navigating to different pages.

Define your routes using the AutoRoute class, which takes in a path and a page. The path is the string that will be used for navigating to the page, and the page is the widget that will be shown when the route is navigated to.
Once your routes are defined, you can use the generated router to navigate between them using the pushNamed method.
To generate the router, run the command flutter packages pub run build_runner build in your terminal.

Here's an example of how to use auto_route in your project:

```
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';


@MaterialAutoRouter(
  routes: [\n    AutoRoute(path: '/', page: HomePage),   
   AutoRoute(path: '/details/:id', page: DetailsPage),
    AutoRoute(path: '/settings', page: SettingsPage),  
    ],)
class $AppRouter {}


// Then in your code, you can navigate to a page by calling pushNamed:\nNavigator.pushNamed(context, '/details/1');\n```

Remember to replace HomePage, DetailsPage, and SettingsPage with your own widget classes. Also, note that you can pass parameters to your routes by using the : syntax in the path. When generating the router, the : will be replaced by a named parameter. 


To generate the router, run the command flutter packages pub run build_runner build in your terminal. This will generate a router.gr.dart file that you can import and use in your project.