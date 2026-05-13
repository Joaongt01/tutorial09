import 'package:hellota/model/filme_model.dart';
import 'package:hellota/database.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Filme> filmes = Database.getFilmes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text(
              "CineFlutter",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.blueAccent,
            elevation: 4,
          ),
          body: ListView.builder(
            itemCount: filmes.length,
            itemBuilder: (context, index) {
              final filme = filmes[index];

              final Color starColor = filme.imdb > 8.5
                  ? Colors.amber
                  : Colors.grey;

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.movie, color: Colors.white),
                  ),
                  title: Text(
                    filme.titulo,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Ano: ${filme.anoLancamento}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: starColor, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        filme.imdb.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: starColor,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Clicou em: ${filme.titulo}');
                  },
                  onLongPress: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Você clicou LongPress no filme ${filme.titulo}',
                        ),
                        duration: const Duration(seconds: 2),
                        backgroundColor: Colors.blueAccent,
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
