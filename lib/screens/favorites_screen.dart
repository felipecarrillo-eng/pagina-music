import 'package:flutter/material.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // ⚠️ Luego esto vendrá del Provider
    final List<String> favoritos = [];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 🔥 Título
          const Text(
            'Favoritos',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          // 📭 Estado vacío
          if (favoritos.isEmpty)
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.favorite_border, size: 60, color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      'No tienes favoritos aún',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            )
          else
            // ⭐ Lista de favoritos
            Expanded(
              child: ListView.builder(
                itemCount: favoritos.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.favorite, color: Colors.red),
                      title: Text(favoritos[index]),
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