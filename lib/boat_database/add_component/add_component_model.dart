import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_component_widget.dart' show AddComponentWidget;
import 'package:flutter/material.dart';

class AddComponentModel extends FlutterFlowModel<AddComponentWidget> {
  ///  Local state fields for this page.

  List<PartStruct> localPartList = [];
  void addToLocalPartList(PartStruct item) => localPartList.add(item);
  void removeFromLocalPartList(PartStruct item) => localPartList.remove(item);
  void removeAtIndexFromLocalPartList(int index) =>
      localPartList.removeAt(index);
  void insertAtIndexInLocalPartList(int index, PartStruct item) =>
      localPartList.insert(index, item);
  void updateLocalPartListAtIndex(int index, Function(PartStruct) updateFn) =>
      localPartList[index] = updateFn(localPartList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Component widget.
  FocusNode? componentFocusNode;
  TextEditingController? componentTextController;
  String? Function(BuildContext, String?)? componentTextControllerValidator;
  // State field(s) for Make widget.
  FocusNode? makeFocusNode;
  TextEditingController? makeTextController;
  String? Function(BuildContext, String?)? makeTextControllerValidator;
  // State field(s) for Model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelTextController;
  String? Function(BuildContext, String?)? modelTextControllerValidator;
  // State field(s) for Details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
  // State field(s) for Manual widget.
  FocusNode? manualFocusNode;
  TextEditingController? manualTextController;
  String? Function(BuildContext, String?)? manualTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    componentFocusNode?.dispose();
    componentTextController?.dispose();

    makeFocusNode?.dispose();
    makeTextController?.dispose();

    modelFocusNode?.dispose();
    modelTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();

    manualFocusNode?.dispose();
    manualTextController?.dispose();
  }
}
