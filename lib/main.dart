import 'package:flutter/material.dart';
import 'package:palet/app/app.dart';
import 'package:palet/application/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await locator();
  runApp(App());
}
