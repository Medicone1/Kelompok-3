import 'package:flutter/material.dart';
import 'package:splashscreen/about.dart';
import 'package:splashscreen/home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splashscreen/suhupage.dart';
import 'package:splashscreen/kelembapanpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuhuTemp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue, // Warna primer aplikasi
        hintColor: Colors.green, // Warna aksen aplikasi
        // Atur tema tambahan sesuai kebutuhan
      ),
      home: const SplashScreen(
        navigateAfterSeconds: HomePage(),
        seconds: 5,
        // Tambahkan animasi atau logo pada SplashScreen
        // misalnya: image: Image.asset('assets/logo.png'),
        // atau: navigateAfterFuture: someFuture(),
      ),
      initialRoute: 'home', // Rute awal, bisa diatur sesuai kebutuhan
      routes: {
        'home': (context) => const HomePage(),
        'suhu': (context) => SuhuPage(),
        'kelembapan': (context) => const KelembapanPage(),
        'about': (context) => const AboutPage(),
        // Tambahkan route untuk halaman lain jika diperlukan
      },
    );
  }
}
