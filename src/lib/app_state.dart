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

  List<String> _tempMediaList = [];
  List<String> get tempMediaList => _tempMediaList;
  set tempMediaList(List<String> value) {
    _tempMediaList = value;
  }

  void addToTempMediaList(String value) {
    tempMediaList.add(value);
  }

  void removeFromTempMediaList(String value) {
    tempMediaList.remove(value);
  }

  void removeAtIndexFromTempMediaList(int index) {
    tempMediaList.removeAt(index);
  }

  void updateTempMediaListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tempMediaList[index] = updateFn(_tempMediaList[index]);
  }

  void insertAtIndexInTempMediaList(int index, String value) {
    tempMediaList.insert(index, value);
  }

  List<String> _contractorList = [];
  List<String> get contractorList => _contractorList;
  set contractorList(List<String> value) {
    _contractorList = value;
  }

  void addToContractorList(String value) {
    contractorList.add(value);
  }

  void removeFromContractorList(String value) {
    contractorList.remove(value);
  }

  void removeAtIndexFromContractorList(int index) {
    contractorList.removeAt(index);
  }

  void updateContractorListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    contractorList[index] = updateFn(_contractorList[index]);
  }

  void insertAtIndexInContractorList(int index, String value) {
    contractorList.insert(index, value);
  }
}
