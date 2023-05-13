import 'dart:async';
import 'dart:developer' as dev;

import 'package:cagevu/src/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const App());
  }, (error, stack) {
    dev.log('err: $error\nstack: $stack');
  });
}
