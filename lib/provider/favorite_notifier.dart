import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/pariwisata_list.dart';

class FavoriteNotifier extends StateNotifier<List<PariwisataList>> {
  FavoriteNotifier() : super([]);

  void toggleFavorite(PariwisataList item) {
    if (state.contains(item)) {
      state = state.where((element) => element != item).toList();
    } else {
      state = [...state, item];
    }
  }

  bool isFavorite(PariwisataList item) {
    return state.contains(item);
  }
}

final favoriteProvider =
    StateNotifierProvider<FavoriteNotifier, List<PariwisataList>>((ref) {
  return FavoriteNotifier();
});
