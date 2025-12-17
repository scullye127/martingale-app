import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'task_details_widget.dart' show TaskDetailsWidget;
import 'package:flutter/material.dart';

class TaskDetailsModel extends FlutterFlowModel<TaskDetailsWidget> {
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

  // Stores action output result for [Firestore Query - Query a collection] action in taskDetails widget.
  List<UsersRecord>? contractors;
  // State field(s) for contractorOptions widget.
  String? contractorOptionsValue;
  FormFieldController<String>? contractorOptionsValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
