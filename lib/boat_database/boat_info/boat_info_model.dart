import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'boat_info_widget.dart' show BoatInfoWidget;
import 'package:flutter/material.dart';

class BoatInfoModel extends FlutterFlowModel<BoatInfoWidget> {
  ///  Local state fields for this page.

  List<PartStruct> deleteParts = [];
  void addToDeleteParts(PartStruct item) => deleteParts.add(item);
  void removeFromDeleteParts(PartStruct item) => deleteParts.remove(item);
  void removeAtIndexFromDeleteParts(int index) => deleteParts.removeAt(index);
  void insertAtIndexInDeleteParts(int index, PartStruct item) =>
      deleteParts.insert(index, item);
  void updateDeletePartsAtIndex(int index, Function(PartStruct) updateFn) =>
      deleteParts[index] = updateFn(deleteParts[index]);

  String currentCategory = 'All Components';

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
