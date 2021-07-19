import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/app/app.dart';
import 'package:flutter_spotify_clone/core/common/injected/module.dart';

Future<void> main() async {
  await configureInjection();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
