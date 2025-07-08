import 'package:flutter/material.dart';
import 'package:great_places/screens/places_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.indigo,
          onPrimary: Colors.white,
          secondary: Colors.amber,
          onSecondary: Colors.white,
          error: Colors.red.shade400,
          onError: Colors.white,
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: PlacesListScreen(),
      routes: {
        AppRoutes.placeForm: (ctx) => PlaceFormScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
