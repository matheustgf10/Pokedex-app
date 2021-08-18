import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';

part 'pokemon_info_store.g.dart';

class PokemonInfoStore = _PokemonInfoStoreBase with _$PokemonInfoStore;

abstract class _PokemonInfoStoreBase with Store {
  @observable
  int value = 0;

  @observable
  late Pokemon? currentPokemon = Pokemon();

  @observable
  late List<Pokemon> listPokemons = [];

  @observable
  bool isFavorite = false;

  @action
  void increment() {
    value++;
  }

  @action
  void favoritePokemon() {
    isFavorite = !isFavorite;
  }
}
