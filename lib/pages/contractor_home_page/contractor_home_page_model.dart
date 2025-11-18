import '/components/contractor_task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'contractor_home_page_widget.dart' show ContractorHomePageWidget;
import 'package:flutter/material.dart';

class ContractorHomePageModel
    extends FlutterFlowModel<ContractorHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for contractorTask component.
  late ContractorTaskModel contractorTaskModel;

  @override
  void initState(BuildContext context) {
    contractorTaskModel = createModel(context, () => ContractorTaskModel());
  }

  @override
  void dispose() {
    contractorTaskModel.dispose();
  }
}
