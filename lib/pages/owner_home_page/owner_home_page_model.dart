import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'owner_home_page_widget.dart' show OwnerHomePageWidget;
import 'package:flutter/material.dart';

class OwnerHomePageModel extends FlutterFlowModel<OwnerHomePageWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> boatList = [];
  void addToBoatList(DocumentReference item) => boatList.add(item);
  void removeFromBoatList(DocumentReference item) => boatList.remove(item);
  void removeAtIndexFromBoatList(int index) => boatList.removeAt(index);
  void insertAtIndexInBoatList(int index, DocumentReference item) =>
      boatList.insert(index, item);
  void updateBoatListAtIndex(int index, Function(DocumentReference) updateFn) =>
      boatList[index] = updateFn(boatList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
