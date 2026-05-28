import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/list_dokter.dart';
import 'pages/profile.dart';
import 'pages/welcome.dart';

void main() {
  runApp(const AktivitasSatuApp());
}

class AktivitasSatuApp extends StatelessWidget {
  const AktivitasSatuApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: Colors.white,
    );

    return MaterialApp(
      title: 'Praktikum PAB',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            side: const BorderSide(color: Colors.black),
            minimumSize: const Size.fromHeight(48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ),
      home: const WelcomeScreen(),
      routes: {
        '/doctors': (context) => const ListDokterPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
