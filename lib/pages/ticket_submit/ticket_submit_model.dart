import '/flutter_flow/flutter_flow_util.dart';
import 'ticket_submit_widget.dart' show TicketSubmitWidget;
import 'package:flutter/material.dart';

class TicketSubmitModel extends FlutterFlowModel<TicketSubmitWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for jobName widget.
  FocusNode? jobNameFocusNode;
  TextEditingController? jobNameTextController;
  String? Function(BuildContext, String?)? jobNameTextControllerValidator;
  // State field(s) for login-email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  String? _loginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  bool isDataUploading_uploadData0xj = false;
  FFUploadedFile uploadedLocalFile_uploadData0xj =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData0xj = '';

  @override
  void initState(BuildContext context) {
    loginEmailTextControllerValidator = _loginEmailTextControllerValidator;
  }

  @override
  void dispose() {
    jobNameFocusNode?.dispose();
    jobNameTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();
  }
}
