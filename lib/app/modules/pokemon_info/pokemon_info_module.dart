import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_widget.dart';
import 'package:pokedex_app/app/shared/model/Pokemon.dart';

class PokemonInfoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/:id', child: (_, args) {
      return PokemonInfoWidget(
        pokemon: args.data,
        id: int.parse(args.params['id']),
      );
    }),
  ];
}
