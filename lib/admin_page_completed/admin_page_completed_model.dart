import '/backend/backend.dart';
import '/components/service_request_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_page_completed_widget.dart' show AdminPageCompletedWidget;
import 'package:flutter/material.dart';

class AdminPageCompletedModel
    extends FlutterFlowModel<AdminPageCompletedWidget> {
  ///  Local state fields for this page.

  List<String> contractorList = [];
  void addToContractorList(String item) => contractorList.add(item);
  void removeFromContractorList(String item) => contractorList.remove(item);
  void removeAtIndexFromContractorList(int index) =>
      contractorList.removeAt(index);
  void insertAtIndexInContractorList(int index, String item) =>
      contractorList.insert(index, item);
  void updateContractorListAtIndex(int index, Function(String) updateFn) =>
      contractorList[index] = updateFn(contractorList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AdminPage-completed widget.
  List<JobsRecord>? submittedTasks;
  // Model for serviceRequest component.
  late ServiceRequestModel serviceRequestModel;

  @override
  void initState(BuildContext context) {
    serviceRequestModel = createModel(context, () => ServiceRequestModel());
  }

  @override
  void dispose() {
    serviceRequestModel.dispose();
  }
}
