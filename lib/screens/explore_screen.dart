import 'package:flutter/material.dart';

class ExplorarScreen extends StatelessWidget {
  const ExplorarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 🔥 Título
          const Text(
            'Explorar',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Descubre contenido nuevo',
            style: TextStyle(color: Colors.grey),
          ),

          const SizedBox(height: 20),

          // 🔍 Barra de búsqueda (solo visual por ahora)
          TextField(
            decoration: InputDecoration(
              hintText: 'Buscar...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 🎵 Lista
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.music_note),
                    ),
                    title: Text('Item ${index + 1}'),
                    subtitle: const Text('Descripción del contenido'),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {
                        // Aquí luego irá Provider
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