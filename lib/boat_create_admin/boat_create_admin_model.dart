import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'boat_create_admin_widget.dart' show BoatCreateAdminWidget;
import 'package:flutter/material.dart';

class BoatCreateAdminModel extends FlutterFlowModel<BoatCreateAdminWidget> {
  ///  Local state fields for this page.

  List<String> boatList = [];
  void addToBoatList(String item) => boatList.add(item);
  void removeFromBoatList(String item) => boatList.remove(item);
  void removeAtIndexFromBoatList(int index) => boatList.removeAt(index);
  void insertAtIndexInBoatList(int index, String item) =>
      boatList.insert(index, item);
  void updateBoatListAtIndex(int index, Function(String) updateFn) =>
      boatList[index] = updateFn(boatList[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in boatCreateAdmin widget.
  List<UsersRecord>? owners;
  // State field(s) for owner-select widget.
  String? ownerSelectValue;
  FormFieldController<String>? ownerSelectValueController;
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
