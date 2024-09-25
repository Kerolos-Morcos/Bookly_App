import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
        ),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      title: 'Bookly',
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      routes: {
        'home': (context) => const HomeView(),
      },
    );
  }
}
