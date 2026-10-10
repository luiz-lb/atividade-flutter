import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:atividade_layouts/main.dart';
import 'package:atividade_layouts/routes.dart';

void main() {
  testWidgets('Tela inicial abre e mostra os 6 layouts', (tester) async {
    await tester.pumpWidget(const AtividadeLayoutsApp());

    expect(find.text('Atividade de Layouts'), findsOneWidget);
    for (final item in itensMenu) {
      expect(find.text(item.titulo), findsOneWidget);
    }
  });

  testWidgets('Menu lateral navega para cada tela sem erros de layout', (
    tester,
  ) async {
    // Tamanho de um celular comum.
    tester.view.physicalSize = const Size(1080, 2340);
    tester.view.devicePixelRatio = 2.75;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const AtividadeLayoutsApp());

    for (final item in itensMenu) {
      await tester.tap(find.byTooltip('Open navigation menu'));
      await tester.pumpAndSettle();

      await tester.tap(
        find.descendant(
          of: find.byType(Drawer),
          matching: find.text(item.titulo),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('${item.numero} - ${item.titulo}'), findsOneWidget);
      expect(tester.takeException(), isNull);
    }

    // Voltar pelo menu para o início.
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Início'));
    await tester.pumpAndSettle();
    expect(find.text('Atividade de Layouts'), findsOneWidget);
  });
}
