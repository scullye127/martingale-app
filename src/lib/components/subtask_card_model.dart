import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'subtask_card_widget.dart' show SubtaskCardWidget;
import 'package:flutter/material.dart';

class SubtaskCardModel extends FlutterFlowModel<SubtaskCardWidget> {
  ///  Local state fields for this component.

  List<String> contractorList = [];
  void addToContractorList(String item) => contractorList.add(item);
  void removeFromContractorList(String item) => contractorList.remove(item);
  void removeAtIndexFromContractorList(int index) =>
      contractorList.removeAt(index);
  void insertAtIndexInContractorList(int index, String item) =>
      contractorList.insert(index, item);
  void updateContractorListAtIndex(int index, Function(String) updateFn) =>
      contractorList[index] = updateFn(contractorList[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in subtaskCard widget.
  List<UsersRecord>? contractors;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
