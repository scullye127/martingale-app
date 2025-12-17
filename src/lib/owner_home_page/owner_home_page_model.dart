import '/components/bottom_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'owner_home_page_widget.dart' show OwnerHomePageWidget;
import 'package:flutter/material.dart';

class OwnerHomePageModel extends FlutterFlowModel<OwnerHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottomNavBar component.
  late BottomNavBarModel bottomNavBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavBarModel = createModel(context, () => BottomNavBarModel());
  }

  @override
  void dispose() {
    bottomNavBarModel.dispose();
  }
}
