import 'package:pokedex_app/app/modules/pokedex/pokedex_module.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_module.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_repository.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_widget.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PokemonInfoRepository()),
    Bind.lazySingleton((i) => PokemonInfoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute(
      '/pokedex',
      module: PokedexModule(),
    ),
    // ChildRoute('/pokemonInfo',
    //     child: (_, args) => PokemonInfoWidget(idHero: args.data)),
    ModuleRoute('/pokemonInfo', module: PokemonInfoModule()),
  ];
}
