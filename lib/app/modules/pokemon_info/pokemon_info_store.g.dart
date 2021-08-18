// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonInfoStore on _PokemonInfoStoreBase, Store {
  final _$valueAtom = Atom(name: '_PokemonInfoStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$currentPokemonAtom =
      Atom(name: '_PokemonInfoStoreBase.currentPokemon');

  @override
  Pokemon? get currentPokemon {
    _$currentPokemonAtom.reportRead();
    return super.currentPokemon;
  }

  @override
  set currentPokemon(Pokemon? value) {
    _$currentPokemonAtom.reportWrite(value, super.currentPokemon, () {
      super.currentPokemon = value;
    });
  }

  final _$listPokemonsAtom = Atom(name: '_PokemonInfoStoreBase.listPokemons');

  @override
  List<Pokemon> get listPokemons {
    _$listPokemonsAtom.reportRead();
    return super.listPokemons;
  }

  @override
  set listPokemons(List<Pokemon> value) {
    _$listPokemonsAtom.reportWrite(value, super.listPokemons, () {
      super.listPokemons = value;
    });
  }

  final _$isFavoriteAtom = Atom(name: '_PokemonInfoStoreBase.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  final _$_PokemonInfoStoreBaseActionController =
      ActionController(name: '_PokemonInfoStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_PokemonInfoStoreBaseActionController.startAction(
        name: '_PokemonInfoStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PokemonInfoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void favoritePokemon() {
    final _$actionInfo = _$_PokemonInfoStoreBaseActionController.startAction(
        name: '_PokemonInfoStoreBase.favoritePokemon');
    try {
      return super.favoritePokemon();
    } finally {
      _$_PokemonInfoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
currentPokemon: ${currentPokemon},
listPokemons: ${listPokemons},
isFavorite: ${isFavorite}
    ''';
  }
}
