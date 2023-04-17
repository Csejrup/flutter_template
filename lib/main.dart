import 'package:eeg_tracker/src/configs/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:eeg_tracker/app.dart';
import 'package:eeg_tracker/src/configs/app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env.prod');

  // await initializeDependencies();
  await Supabase.initialize(
    url: dotenv.env['BASE_URL']!,
    anonKey: dotenv.env['API_KEY']!,
  );
   const AppConfig configuredApp = AppConfig(
    environment: Environment.prod,
    appTitle: 'Tracker',
    child: MyApp(),
  );
  runApp(configuredApp);
}
