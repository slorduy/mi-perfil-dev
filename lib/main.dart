import 'package:flutter/material.dart';
import 'package:mi_perfil_dev/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Widget raíz de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi perfil app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const ProfileScreen(),
    );
  }
}
