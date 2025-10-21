import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// true if the user is a contractor, saved for account creation
  bool _isContractor = false;
  bool get isContractor => _isContractor;
  set isContractor(bool value) {
    _isContractor = value;
  }

  /// if user is a boat owner.
  ///
  /// saved for account creation
  bool _isOwner = false;
  bool get isOwner => _isOwner;
  set isOwner(bool value) {
    _isOwner = value;
  }
}
