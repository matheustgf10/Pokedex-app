import 'package:dio/dio.dart';
import 'package:pokedex_app/app/modules/pokedex/pokedex_repository.dart';
import 'package:pokedex_app/app/modules/pokedex/pokedex_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/pokedex/pokedex_widget.dart';

class PokedexModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PokedexRepository(dio: i.get<Dio>())),
    Bind.lazySingleton((i) => PokedexStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => PokedexWidget(),
    ),
  ];
}
