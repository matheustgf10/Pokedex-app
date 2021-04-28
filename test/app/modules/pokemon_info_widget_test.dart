import 'package:pokedex_app/app/modules/pokemon_info/pokemon_info_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  group('PokemonInfoWidget', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester
          .pumpWidget(buildTestableWidget(PokemonInfoWidget(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
