import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shovon_resume/ui/constants/constants.dart';
import 'package:shovon_resume/ui/pages/home_page/home_page_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahmudur Rahman Shovon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: UiConstants.brown),
        useMaterial3: true,
        textTheme: GoogleFonts.inriaSerifTextTheme(
          Theme.of(context).textTheme.copyWith(
                headlineLarge: GoogleFonts.inriaSans(
                  color: UiConstants.headerColor,
                ),
                headlineSmall: GoogleFonts.inriaSans(
                  color: UiConstants.headerColor,
                ),
                titleLarge: GoogleFonts.inriaSans(
                  color: UiConstants.generalTextColor,
                ),
                titleMedium: GoogleFonts.inriaSans(
                  color: UiConstants.headerColor,
                ),
                bodyLarge: GoogleFonts.inriaSans(
                  color: UiConstants.generalTextColor,
                ),
              ),
        ),
        primaryColor: UiConstants.brown,
      ),
      home: const HomePage(),
    );
  }
}
