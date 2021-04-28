import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_app/app/modules/pokedex/pokedex_repository.dart';
 
void main() {
  late PokedexRepository repository;

  setUpAll(() {
    repository = PokedexRepository();
  });
}