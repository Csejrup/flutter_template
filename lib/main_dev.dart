import 'package:eeg_tracker/src/configs/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app.dart';
import 'src/configs/app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: './vars/.env.dev');

  // await initializeDependencies();
  await Supabase.initialize(
    url: dotenv.env['BASE_URL']!,
    anonKey: dotenv.env['API_KEY']!,
  );
  const AppConfig configuredApp = AppConfig(
    environment: Environment.dev,
    appTitle: '[DEV] Tracker',
    child: MyApp(),
  );
  runApp(configuredApp);
}
