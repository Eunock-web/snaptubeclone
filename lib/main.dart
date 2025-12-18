import 'package:flutter/material.dart';
import 'appbarcontent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnapTubeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // Style des textes
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

//StatefullWidget de la page d'acceuil
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

//Widget d'etat de la page d'acceuil
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Appbarcontent(
                content: 'Tout',
                isActive: true,
              ), // Celui-ci est sélectionné
              Appbarcontent(content: 'Musique'),
              Appbarcontent(content: 'Podcasts'),
              Appbarcontent(content: 'Wrapped'),
            ],
          ),
        ),
        elevation: 0,
      ),

      body: ListView(

      ),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Acceuil'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Rechercher'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Bibliothèque'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Premium'),
          NavigationDestination(icon: Icon(Icons.add), label: 'Créer'),
        ],
      ),
    );
  }
}


//Widget pour 