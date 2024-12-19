import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:broke_less/flutter_flow/flutter_flow_icon_button.dart';
import 'package:broke_less/flutter_flow/flutter_flow_widgets.dart';
import 'package:broke_less/flutter_flow/flutter_flow_theme.dart';
import 'package:broke_less/index.dart';
import 'package:broke_less/main.dart';
import 'package:broke_less/flutter_flow/flutter_flow_util.dart';

import 'package:broke_less/backend/firebase/firebase_config.dart';
import 'package:broke_less/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('US1 Correct Email and Password', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MyApp());

    await tester.tap(find.byKey(ValueKey('Welcome_kb72')));
    await tester.enterText(
        find.byKey(ValueKey('Email_d4q4')), 'gdrouin@uri.edu');
    await tester.enterText(find.byKey(ValueKey('Password_tlj5')), 't1gGer654!');
    await tester.tap(find.byKey(ValueKey('LoginButton_hod7')));
    expect(find.text('Total Points'), findsOneWidget);
  });

  testWidgets('US5 transaction info displayed', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MyApp(
      entryPage: WelcomeWidget(),
    ));

    await tester.tap(find.byKey(ValueKey('HomeLogin_vs9z')));
    await tester.enterText(
        find.byKey(ValueKey('Email_d4q4')), 'jack_nystrom@uri.edu');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.enterText(
        find.byKey(ValueKey('Password_tlj5')), '@Nintendo20');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(ValueKey('LoginButton_hod7')));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    await tester.tap(find.byKey(ValueKey('infoButton_i5al')));
    await tester.pumpAndSettle(Duration(milliseconds: 10000));
    expect(find.byKey(ValueKey('ListView_wtil')), findsWidgets);
  });

  testWidgets('US2 Account Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MyApp());

    await tester.tap(find.byKey(ValueKey('HomeSiginup_15x3')));
    await tester.enterText(
        find.byKey(ValueKey('Email_j9ij')), 'afranci123@uri.edu');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.enterText(find.byKey(ValueKey('Password_960t')), '123456');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.enterText(
        find.byKey(ValueKey('ConfirmPassword_zf9g')), '123456');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(ValueKey('SignUp_6uxr')));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
