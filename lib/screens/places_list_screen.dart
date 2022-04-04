import 'package:flutter/material.dart';

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Lugares"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/place-form');
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
