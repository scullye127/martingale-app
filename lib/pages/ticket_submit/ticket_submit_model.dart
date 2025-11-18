import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ticket_submit_widget.dart' show TicketSubmitWidget;
import 'package:flutter/material.dart';

class TicketSubmitModel extends FlutterFlowModel<TicketSubmitWidget> {
  ///  Local state fields for this page.

  List<String> tempMediaList = [];
  void addToTempMediaList(String item) => tempMediaList.add(item);
  void removeFromTempMediaList(String item) => tempMediaList.remove(item);
  void removeAtIndexFromTempMediaList(int index) =>
      tempMediaList.removeAt(index);
  void insertAtIndexInTempMediaList(int index, String item) =>
      tempMediaList.insert(index, item);
  void updateTempMediaListAtIndex(int index, Function(String) updateFn) =>
      tempMediaList[index] = updateFn(tempMediaList[index]);

  List<String> boatsOwned = [];
  void addToBoatsOwned(String item) => boatsOwned.add(item);
  void removeFromBoatsOwned(String item) => boatsOwned.remove(item);
  void removeAtIndexFromBoatsOwned(int index) => boatsOwned.removeAt(index);
  void insertAtIndexInBoatsOwned(int index, String item) =>
      boatsOwned.insert(index, item);
  void updateBoatsOwnedAtIndex(int index, Function(String) updateFn) =>
      boatsOwned[index] = updateFn(boatsOwned[index]);

  List<String> tempVideolist = [];
  void addToTempVideolist(String item) => tempVideolist.add(item);
  void removeFromTempVideolist(String item) => tempVideolist.remove(item);
  void removeAtIndexFromTempVideolist(int index) =>
      tempVideolist.removeAt(index);
  void insertAtIndexInTempVideolist(int index, String item) =>
      tempVideolist.insert(index, item);
  void updateTempVideolistAtIndex(int index, Function(String) updateFn) =>
      tempVideolist[index] = updateFn(tempVideolist[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in TicketSubmit widget.
  List<VesselDatabaseRecord>? ownedBoats;
  // State field(s) for jobName widget.
  FocusNode? jobNameFocusNode;
  TextEditingController? jobNameTextController;
  String? Function(BuildContext, String?)? jobNameTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  bool isDataUploading_uploadData0xj = false;
  FFUploadedFile uploadedLocalFile_uploadData0xj =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData0xj = '';

  bool isDataUploading_uploadData49w = false;
  FFUploadedFile uploadedLocalFile_uploadData49w =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData49w = '';

  // Stores action output result for [Custom Action - customVideoUpload] action in VideoButton widget.
  String? customVideoData;

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

    tabBarController?.dispose();
  }
}
