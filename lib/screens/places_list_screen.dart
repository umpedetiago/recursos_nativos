// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recursos_nativos/providers/great_places.dart';

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
        body: Consumer<GreatPlaces>(
          child: Center(
            child: Text('Nenhum item cadastrado'),
          ),
          builder: (context, greatPlaces, child) => greatPlaces.itensCount == 0
              ? Text('Nenhum item cadastrado')
              : ListView.builder(
                  itemCount: greatPlaces.itensCount,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          FileImage(greatPlaces.itemByIndex(index).image),
                    ),
                    title: Text(greatPlaces.itemByIndex(index).title),
                    onTap: () {},
                  ),
                ),
        ));
  }
}
