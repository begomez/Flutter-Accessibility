import 'package:accessibility_sample/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("MyApp", () {
    SemanticsHandle? handle;

    tearDown(() {
      handle?.dispose();
    });

    testWidgets('when added to tree then displayed', (tester) async {
      await tester.pumpWidget(const MyAccessibleApp());

      expect(find.byType(MyHomePage), findsOneWidget);
    });

    testWidgets("when displayed then follows tap guidelines", (tester) async {
      handle = tester.ensureSemantics();

      await tester.pumpWidget(const MyAccessibleApp());

      // check min size for buttons

      // android
      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));

      // ios
      await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
    });

    testWidgets("when displayed then follows label guidelines", (tester) async {
      handle = tester.ensureSemantics();

      await tester.pumpWidget(const MyAccessibleApp());

      // check alt texts on buttons
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    });

    testWidgets("when displayed then follows contrast guidelines", (tester) async {
      handle = tester.ensureSemantics();

      await tester.pumpWidget(const MyAccessibleApp());

      // Checks whether semantic nodes meet the minimum text contrast levels.
      // The recommended text contrast is 3:1 for larger text (18 point and above regular)
      await expectLater(tester, meetsGuideline(textContrastGuideline));
    });
  });
}
