import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_repository.dart';

void main() {
  late PokemonInfoRepository repository;

  setUpAll(() {
    repository = PokemonInfoRepository();
  });
}
