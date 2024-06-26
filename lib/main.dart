import 'package:flutter/material.dart';
import 'package:flutter_calendar_app/database/drift_database.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'screen/home_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  final database = LocalDatabase();

  GetIt.I.registerSingleton<LocalDatabase>(database);

  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'AaKindMedium',
    ),
    home: HomeScreen(),
  ));
}

