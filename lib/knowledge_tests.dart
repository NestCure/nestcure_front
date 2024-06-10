import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';
import 'health_knowledge_test.dart';

class KnowledgeTestsScreen extends StatelessWidget {
  const KnowledgeTestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset(
          'images/logo.jpg',
          height: 50,
          fit: BoxFit.cover,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(194, 198, 203, 1),
            ),
            child: IconButton(
              icon: const Icon(Icons.person, color: Color.fromRGBO(20, 39, 53, 1)),
              onPressed: () {
                // Acción para ir al perfil
              },
            ),
          ),
        ],
        centerTitle: true,
      ),
      drawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Tests de coneixement',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // Cambia el color del botón
                foregroundColor: Colors.black, // Cambia el color del texto
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HealthKnowledgeTestScreen(),
                  ),
                );
              },
              child: const Text('Coneixements Salut'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // Cambia el color del botón
                foregroundColor: Colors.black, // Cambia el color del texto
              ),
              onPressed: () {
                // Acción para el test de coneixements d'atenció
              },
              child: const Text('Coneixements d\'atenció'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // Cambia el color del botón
                foregroundColor: Colors.black, // Cambia el color del texto
              ),
              onPressed: () {
                // Acción para el test de habilitats de comunicació
              },
              child: const Text('Habilitats de comunicació'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // Cambia el color del botón
                foregroundColor: Colors.black, // Cambia el color del texto
              ),
              onPressed: () {
                // Acción para el test de habilitats pràctiques
              },
              child: const Text('Habilitats pràctiques'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}





