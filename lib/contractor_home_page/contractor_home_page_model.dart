import '/components/bottom_nav_bar_widget.dart';
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
  // Model for bottomNavBar component.
  late BottomNavBarModel bottomNavBarModel;

  @override
  void initState(BuildContext context) {
    contractorTaskModel = createModel(context, () => ContractorTaskModel());
    bottomNavBarModel = createModel(context, () => BottomNavBarModel());
  }

  @override
  void dispose() {
    contractorTaskModel.dispose();
    bottomNavBarModel.dispose();
  }
}
