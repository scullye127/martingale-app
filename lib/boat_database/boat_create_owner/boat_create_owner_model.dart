import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'boat_create_owner_widget.dart' show BoatCreateOwnerWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BoatCreateOwnerModel extends FlutterFlowModel<BoatCreateOwnerWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for boatName widget.
  FocusNode? boatNameFocusNode;
  TextEditingController? boatNameTextController;
  String? Function(BuildContext, String?)? boatNameTextControllerValidator;
  // State field(s) for hullID widget.
  FocusNode? hullIDFocusNode;
  TextEditingController? hullIDTextController;
  late MaskTextInputFormatter hullIDMask;
  String? Function(BuildContext, String?)? hullIDTextControllerValidator;
  // State field(s) for homePort widget.
  FocusNode? homePortFocusNode;
  TextEditingController? homePortTextController;
  String? Function(BuildContext, String?)? homePortTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VesselsRecord? boat;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PartsListRecord? partsList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    boatNameFocusNode?.dispose();
    boatNameTextController?.dispose();

    hullIDFocusNode?.dispose();
    hullIDTextController?.dispose();

    homePortFocusNode?.dispose();
    homePortTextController?.dispose();
  }
}
