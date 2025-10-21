import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for owner-signup-email widget.
  FocusNode? ownerSignupEmailFocusNode;
  TextEditingController? ownerSignupEmailTextController;
  String? Function(BuildContext, String?)?
      ownerSignupEmailTextControllerValidator;
  String? _ownerSignupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for owner-signup-password widget.
  FocusNode? ownerSignupPasswordFocusNode;
  TextEditingController? ownerSignupPasswordTextController;
  late bool ownerSignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      ownerSignupPasswordTextControllerValidator;
  String? _ownerSignupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for owner-signup-confirmpword widget.
  FocusNode? ownerSignupConfirmpwordFocusNode;
  TextEditingController? ownerSignupConfirmpwordTextController;
  late bool ownerSignupConfirmpwordVisibility;
  String? Function(BuildContext, String?)?
      ownerSignupConfirmpwordTextControllerValidator;
  String? _ownerSignupConfirmpwordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for contractor-signup-email widget.
  FocusNode? contractorSignupEmailFocusNode;
  TextEditingController? contractorSignupEmailTextController;
  String? Function(BuildContext, String?)?
      contractorSignupEmailTextControllerValidator;
  String? _contractorSignupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for contractor-signup-pword widget.
  FocusNode? contractorSignupPwordFocusNode;
  TextEditingController? contractorSignupPwordTextController;
  late bool contractorSignupPwordVisibility;
  String? Function(BuildContext, String?)?
      contractorSignupPwordTextControllerValidator;
  String? _contractorSignupPwordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for contractor-signup-confirmpword widget.
  FocusNode? contractorSignupConfirmpwordFocusNode;
  TextEditingController? contractorSignupConfirmpwordTextController;
  late bool contractorSignupConfirmpwordVisibility;
  String? Function(BuildContext, String?)?
      contractorSignupConfirmpwordTextControllerValidator;
  String? _contractorSignupConfirmpwordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    ownerSignupEmailTextControllerValidator =
        _ownerSignupEmailTextControllerValidator;
    ownerSignupPasswordVisibility = false;
    ownerSignupPasswordTextControllerValidator =
        _ownerSignupPasswordTextControllerValidator;
    ownerSignupConfirmpwordVisibility = false;
    ownerSignupConfirmpwordTextControllerValidator =
        _ownerSignupConfirmpwordTextControllerValidator;
    contractorSignupEmailTextControllerValidator =
        _contractorSignupEmailTextControllerValidator;
    contractorSignupPwordVisibility = false;
    contractorSignupPwordTextControllerValidator =
        _contractorSignupPwordTextControllerValidator;
    contractorSignupConfirmpwordVisibility = false;
    contractorSignupConfirmpwordTextControllerValidator =
        _contractorSignupConfirmpwordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    ownerSignupEmailFocusNode?.dispose();
    ownerSignupEmailTextController?.dispose();

    ownerSignupPasswordFocusNode?.dispose();
    ownerSignupPasswordTextController?.dispose();

    ownerSignupConfirmpwordFocusNode?.dispose();
    ownerSignupConfirmpwordTextController?.dispose();

    contractorSignupEmailFocusNode?.dispose();
    contractorSignupEmailTextController?.dispose();

    contractorSignupPwordFocusNode?.dispose();
    contractorSignupPwordTextController?.dispose();

    contractorSignupConfirmpwordFocusNode?.dispose();
    contractorSignupConfirmpwordTextController?.dispose();
  }
}
