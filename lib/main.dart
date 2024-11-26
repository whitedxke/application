import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';
import 'dependencies/dependencies.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setupDependencies();

  runApp(
    const Application(),
  );
}
