import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_store.dart';

void main() {
  late PokemonInfoStore store;

  setUpAll(() {
    store = PokemonInfoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
