import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature and Humidity Monitor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Monitoring2Page(),
    );
  }
}

class Monitoring2Page extends StatelessWidget {
  const Monitoring2Page({Key? key}) : super(key: key);

  Widget _buildMemberText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Kelompok:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildMemberText('1. Vergiawan'),
            _buildMemberText('2. Galih Riantiarno'),
            _buildMemberText('3. Bella'),
            _buildMemberText('4. Akbar'),
          ],
        ),
      ),
    );
  }
}
