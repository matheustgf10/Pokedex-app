import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_widget.dart';

class PokemonInfoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/pokemonInfo',
      child: (_, args) => PokemonInfoWidget(),
    ),
  ];
}
