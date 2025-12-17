import '/boat_database/boat_list/boat_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'boat_list_owner_widget.dart' show BoatListOwnerWidget;
import 'package:flutter/material.dart';

class BoatListOwnerModel extends FlutterFlowModel<BoatListOwnerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for boatList component.
  late BoatListModel boatListModel;

  @override
  void initState(BuildContext context) {
    boatListModel = createModel(context, () => BoatListModel());
  }

  @override
  void dispose() {
    boatListModel.dispose();
  }
}
