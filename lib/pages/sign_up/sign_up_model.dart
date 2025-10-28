import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for roleSelect widget.
  String? roleSelectValue;
  FormFieldController<String>? roleSelectValueController;
  // State field(s) for signup-email widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for signup-password widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  String? _signupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters';
    }

    return null;
  }

  // State field(s) for signup-confirmpword widget.
  FocusNode? signupConfirmpwordFocusNode;
  TextEditingController? signupConfirmpwordTextController;
  late bool signupConfirmpwordVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmpwordTextControllerValidator;
  String? _signupConfirmpwordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    signupPasswordVisibility = false;
    signupPasswordTextControllerValidator =
        _signupPasswordTextControllerValidator;
    signupConfirmpwordVisibility = false;
    signupConfirmpwordTextControllerValidator =
        _signupConfirmpwordTextControllerValidator;
  }

  @override
  void dispose() {
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupConfirmpwordFocusNode?.dispose();
    signupConfirmpwordTextController?.dispose();
  }
}
