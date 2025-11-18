import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_page_new_assigned_widget.dart' show AdminPageNewAssignedWidget;
import 'package:flutter/material.dart';

class AdminPageNewAssignedModel
    extends FlutterFlowModel<AdminPageNewAssignedWidget> {
  ///  Local state fields for this page.

  List<String> contractorList = [];
  void addToContractorList(String item) => contractorList.add(item);
  void removeFromContractorList(String item) => contractorList.remove(item);
  void removeAtIndexFromContractorList(int index) =>
      contractorList.removeAt(index);
  void insertAtIndexInContractorList(int index, String item) =>
      contractorList.insert(index, item);
  void updateContractorListAtIndex(int index, Function(String) updateFn) =>
      contractorList[index] = updateFn(contractorList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AdminPage-newAssigned widget.
  List<JobsRecord>? submittedTasks;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
