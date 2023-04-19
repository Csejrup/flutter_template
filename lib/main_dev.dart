import 'package:flutter_template/src/configs/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:flutter_template/app.dart';
import 'package:flutter_template/src/configs/app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Loads environment variables from .env.dev file
  await dotenv.load(fileName: './vars/.env.dev');
  // Initializes Supabase database with the url and anon key passed as parameters
  await Supabase.initialize(
    url: dotenv.env['BASE_URL']!,
    anonKey: dotenv.env['API_KEY']!,
  );
  // Creates an AppConfig object with details of the app, including environment, appTitle, widget
  const AppConfig configuredApp = AppConfig(
    environment: Environment.dev,
    appTitle: '[DEV] AppName', //Insert your app name here
    child: MyApp(),
  );
  // Launches the application with the given configuration
  runApp(configuredApp);
}
