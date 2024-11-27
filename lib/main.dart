import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';
import 'dependencies/dependencies.dart';
import 'observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setupDependencies();
  Bloc.observer = ApplicationBlocObserver();

  runApp(
    const Application(),
  );
}
