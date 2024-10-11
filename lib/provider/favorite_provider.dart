import 'package:flutter/material.dart';
import '../model/pariwisata_list.dart';

class FavoriteProvider with ChangeNotifier {
  final List<PariwisataList> _favoriteItems = [];

  List<PariwisataList> get favoriteItems => _favoriteItems;

  void toggleFavorite(PariwisataList item) {
    if (_favoriteItems.contains(item)) {
      _favoriteItems.remove(item);
    } else {
      _favoriteItems.add(item);
    }
    notifyListeners();
  }

  bool isFavorite(PariwisataList item) {
    return _favoriteItems.contains(item);
  }
}
