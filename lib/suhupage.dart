import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SuhuPage());
}

class SuhuPage extends StatelessWidget {
  const SuhuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature and Humidity Monitor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MonitoringPage(),
    );
  }
}

class MonitoringPage extends StatefulWidget {
  @override
  _MonitoringPageState createState() => _MonitoringPageState();
}

class _MonitoringPageState extends State<MonitoringPage> {
  double temperature = 25.0; // Nilai dummy untuk suhu
  DatabaseReference _temperatureRef =
      FirebaseDatabase.instance.ref().child('dht11/temp');

  @override
  void initState() {
    super.initState();
    _temperatureRef.onValue.listen((event) {
      final value = event.snapshot.value;
      if (value != null) {
        setState(() {
          temperature = double.parse(value.toString());
        });
      }
    });
  }

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
              'Temperature:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$temperature %',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
