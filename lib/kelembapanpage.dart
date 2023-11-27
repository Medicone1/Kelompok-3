import 'package:flutter/material.dart';

class KelembapanPage extends StatelessWidget {
  const KelembapanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature and Humidity Monitor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Monitoring1Page(),
    );
  }
}

class Monitoring1Page extends StatefulWidget {
  @override
  _Monitoring1PageState createState() => _Monitoring1PageState();
}

class _Monitoring1PageState extends State<Monitoring1Page> {
  double humidity = 60.0; // Nilai dummy untuk kelembapan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelembapan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Humidity:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$humidity %',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
