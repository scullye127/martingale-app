import '/flutter_flow/flutter_flow_util.dart';
import 'update_job_widget.dart' show UpdateJobWidget;
import 'package:flutter/material.dart';

class UpdateJobModel extends FlutterFlowModel<UpdateJobWidget> {
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
