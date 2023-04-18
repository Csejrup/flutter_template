# Flutter Template



## Setup
This template uses flavors to switch between different environments for the utilization of different Supabase projects. 
Create a "vars" folder in root and create your .env files for dev, stage and prod environments

Run 'flutter pub run build_runner build'

# Run the app in the dev flavor
flutter run --flavor dev -t lib/main_dev.dart

# Build the app in the prod flavor
flutter build apk --flavor prod -t lib/main_prod.dart