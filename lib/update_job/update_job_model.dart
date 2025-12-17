import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'update_job_widget.dart' show UpdateJobWidget;
import 'package:flutter/material.dart';

class UpdateJobModel extends FlutterFlowModel<UpdateJobWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ContractrorDetails widget.
  FocusNode? contractrorDetailsFocusNode;
  TextEditingController? contractrorDetailsTextController;
  String? Function(BuildContext, String?)?
      contractrorDetailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    contractrorDetailsFocusNode?.dispose();
    contractrorDetailsTextController?.dispose();
  }
}
