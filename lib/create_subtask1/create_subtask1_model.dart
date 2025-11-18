import '/flutter_flow/flutter_flow_util.dart';
import 'create_subtask1_widget.dart' show CreateSubtask1Widget;
import 'package:flutter/material.dart';

class CreateSubtask1Model extends FlutterFlowModel<CreateSubtask1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
