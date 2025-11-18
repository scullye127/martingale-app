import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:martingale_app/flutter_flow/flutter_flow_drop_down.dart';
import 'package:martingale_app/flutter_flow/flutter_flow_icon_button.dart';
import 'package:martingale_app/flutter_flow/flutter_flow_widgets.dart';
import 'package:martingale_app/flutter_flow/flutter_flow_theme.dart';
import 'package:martingale_app/index.dart';
import 'package:martingale_app/main.dart';
import 'package:martingale_app/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:martingale_app/backend/firebase/firebase_config.dart';
import 'package:martingale_app/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('US1 Account Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('loginButtonBoat_nvqn')));
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.tap(find.byKey(const ValueKey('signup-email_zuoh')));
    await tester.pumpAndSettle(const Duration(milliseconds: 500));
    await tester.enterText(
        find.byKey(const ValueKey('signup-email_zuoh')), 'testowner@gmail.com');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(const ValueKey('signup-password_j7l7')));
    await tester.enterText(
        find.byKey(const ValueKey('signup-password_j7l7')), 'password123');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(const ValueKey('signup-confirmpword_srmm')));
    await tester.enterText(
        find.byKey(const ValueKey('signup-confirmpword_srmm')), 'password123');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.tap(find.byKey(const ValueKey('signUpButton_hxvm')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.text('Owner Dashboard'), findsWidgets);
  });

  testWidgets('US2 User Login', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.enterText(
        find.byKey(const ValueKey('login-email_v1jl')), 'owner1@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('login-password_rzgs')), 'password123');
    await tester.tap(find.byKey(const ValueKey('loginButtonBoat_nvqn')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(find.text('Owner Dashboard'), findsOneWidget);
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
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}
