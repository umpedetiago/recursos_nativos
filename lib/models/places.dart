import 'dart:io';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String endereco;

  PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.endereco,
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation? locatoion;
  final File image;

  Place({
    required this.id,
    required this.title,
    this.locatoion,
    required this.image,
  });
}
