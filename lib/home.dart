import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("SuhuTemperature"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          _buildCard(
            context,
            'suhu',
            'Suhu',
            'assets/img/logo7.png',
          ),
          _buildCard(
            context,
            'kelembapan',
            'Kelembapan',
            'assets/img/logo7.png',
          ),
          _buildAboutCard(context, 'about'),
        ],
      ),
    );
  }

  Widget _buildCard(
      BuildContext context, String route, String title, String imagePath) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 4, // Memberikan efek shadow pada kartu
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Hero(
                tag: title,
                child: const Image(
                  image: AssetImage('assets/img/logo7.png'),
                  width: 50,
                ),
              ),
              Text(title, style: const TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutCard(BuildContext context, String route) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Colors.blue, width: 2.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        splashColor: Colors.blue,
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Hero(
                tag: 'Tentang Kami',
                child: Image(
                  image: AssetImage('assets/img/logo6.png'),
                  width: 50,
                ),
              ),
              Text('Tentang Kami', style: TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
