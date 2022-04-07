import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:recursos_nativos/models/places.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _itens = [];

  List<Place> get itens {
    return [..._itens];
  }

  int get itensCount {
    return _itens.length;
  }

  Place itemByIndex(int index) {
    return _itens[index];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      locatoion: null,
      image: image,
    );

    _itens.add(newPlace);
    notifyListeners();
  }
}
