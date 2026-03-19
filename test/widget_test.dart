// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:felipe/main.dart';

void main() {
  testWidgets('App builds and navigates between tabs', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // The app bar title should be present.
    expect(find.text('App Música'), findsOneWidget);

    // Initial screen (Explorar) should show its content.
    expect(find.text('Pantalla de exploración'), findsOneWidget);

    // Tap the 'Favoritos' tab and verify its screen appears.
    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pumpAndSettle();

    expect(find.text('Pantalla de favoritos'), findsOneWidget);
  });
}
