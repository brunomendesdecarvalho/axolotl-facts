// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'package:axolotl/app/modules/home/pages/fact/widgets/fact_widget.dart';

void main() {
  testWidgets('Page is rendered with it\'s widgets',
      (WidgetTester tester) async {
    (tester) async => await tester.runAsync(() async {
          mockNetworkImagesFor(
              () async => await tester.pumpWidget(const MaterialApp(
                    home: FactWidget(
                      imageUrl: '',
                      fact: '',
                      height: 720,
                      width: 300,
                    ),
                  )));

          expect(tester.firstWidget(find.byKey(const Key('title'))),
              findsOneWidget);
          expect(tester.firstWidget(find.byKey(const Key('image'))),
              findsOneWidget);
          expect(tester.firstWidget(find.byKey(const Key('factBody'))),
              findsOneWidget);
          expect(tester.firstWidget(find.byKey(const Key('nextButton'))),
              findsOneWidget);
          expect(tester.firstWidget(find.byKey(const Key('backButton'))),
              findsOneWidget);
          // Tap to go back to home
          await tester.tap(find.byKey(const Key('backButton')));
          await tester.pump();
          expect(tester.firstWidget(find.byKey(const Key('factBody'))),
              findsNothing);
        });
  });
}
