import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_appfox/core/get_it/configurator.dart';
import 'package:test_appfox/features/search/search_film_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyBtGUJmJtkgRpA_iWGvfwGMSzecAqcrQ8M',
        appId: '1:452730641034:android:7c54f177da419ee0b7eb73',
        messagingSenderId: '644818174778',
        projectId: 'testappfox'),
  );

  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SearchFilmsScreen(),
    );
  }
}
