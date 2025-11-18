import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'boat_create_owner_widget.dart' show BoatCreateOwnerWidget;
import 'package:flutter/material.dart';

class BoatCreateOwnerModel extends FlutterFlowModel<BoatCreateOwnerWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for boat-name widget.
  FocusNode? boatNameFocusNode;
  TextEditingController? boatNameTextController;
  String? Function(BuildContext, String?)? boatNameTextControllerValidator;
  String? _boatNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for boat-number widget.
  FocusNode? boatNumberFocusNode;
  TextEditingController? boatNumberTextController;
  String? Function(BuildContext, String?)? boatNumberTextControllerValidator;
  String? _boatNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in create-button widget.
  VesselDatabaseRecord? newBoat;

  @override
  void initState(BuildContext context) {
    boatNameTextControllerValidator = _boatNameTextControllerValidator;
    boatNumberTextControllerValidator = _boatNumberTextControllerValidator;
  }

  @override
  void dispose() {
    boatNameFocusNode?.dispose();
    boatNameTextController?.dispose();

    boatNumberFocusNode?.dispose();
    boatNumberTextController?.dispose();
  }
}
