import '/flutter_flow/flutter_flow_util.dart';
import 'service_request_widget.dart' show ServiceRequestWidget;
import 'package:flutter/material.dart';

class ServiceRequestModel extends FlutterFlowModel<ServiceRequestWidget> {
  ///  Local state fields for this component.

  List<String> contractorList = [];
  void addToContractorList(String item) => contractorList.add(item);
  void removeFromContractorList(String item) => contractorList.remove(item);
  void removeAtIndexFromContractorList(int index) =>
      contractorList.removeAt(index);
  void insertAtIndexInContractorList(int index, String item) =>
      contractorList.insert(index, item);
  void updateContractorListAtIndex(int index, Function(String) updateFn) =>
      contractorList[index] = updateFn(contractorList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
