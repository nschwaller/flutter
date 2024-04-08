import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Où partons-nous ?'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.house_siding), text: 'Campagne'),
              Tab(icon: Icon(Icons.houseboat_outlined), text: 'Sur l\'eau'),
              Tab(icon: Icon(Icons.panorama), text: 'Avec vue'),
              Tab(icon: Icon(Icons.scuba_diving), text: 'Bord de mer'),
              Tab(icon: Icon(Icons.downhill_skiing), text: 'Ski'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCampagneContent(),
            Container(),
            Container(), 
            Container(), 
          ],
        ),
      ),
    );
  }

  Widget _buildCampagneContent() {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/image.png', fit: BoxFit.cover),
          ),
          ListTile(
            title: Text('Coup de coeur voyageurs'),
            subtitle: Text('Paris, France'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('4.83'),
                Icon(Icons.star, color: Colors.amber),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('3-8 septembre'),
                Text('140€ par nuit'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


