import 'package:flutter/material.dart';
import 'package:recursos_nativos/screens/place_form_screen.dart';
import 'package:recursos_nativos/screens/places_list_screen.dart';
import 'package:recursos_nativos/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const PlaceListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: ((context) => const PlaceFormScreen()),
      },
    );
  }
}
