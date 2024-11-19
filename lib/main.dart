import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );


  runApp(
    const Application(),
  );
}
