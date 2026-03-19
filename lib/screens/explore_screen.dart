import 'package:flutter/material.dart';

class ExplorarScreen extends StatefulWidget {
  const ExplorarScreen({super.key});

  @override
  State<ExplorarScreen> createState() => _ExplorarScreenState();
}

class _ExplorarScreenState extends State<ExplorarScreen> {

  List<bool> favoritos = List.generate(8, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            'Explorar',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView.builder(
              itemCount: favoritos.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Icon(Icons.music_note, color: Colors.white),
                    ),
                    title: Text('Canción ${index + 1}'),
                    subtitle: const Text('Artista / descripción'),
                    trailing: IconButton(
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: Icon(
                          favoritos[index]
                              ? Icons.favorite
                              : Icons.favorite_border,
                          key: ValueKey(favoritos[index]),
                          color: favoritos[index]
                              ? Colors.red
                              : Colors.grey,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          favoritos[index] = !favoritos[index];
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}