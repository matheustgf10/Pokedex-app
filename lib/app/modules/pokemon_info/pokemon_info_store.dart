import 'package:mobx/mobx.dart';

part 'pokemon_info_store.g.dart';

class PokemonInfoStore = _PokemonInfoStoreBase with _$PokemonInfoStore;

abstract class _PokemonInfoStoreBase with Store {
  @observable
  int value = 0;

  @observable
  bool isFavorite = true;

  @action
  void increment() {
    value++;
  }

  @action
  void favoritePokemon() {
    isFavorite = !isFavorite;
  }
}
