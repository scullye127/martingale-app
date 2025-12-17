import '/components/boatownerviewtickets_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'owner_home_page_tickets_widget.dart' show OwnerHomePageTicketsWidget;
import 'package:flutter/material.dart';

class OwnerHomePageTicketsModel
    extends FlutterFlowModel<OwnerHomePageTicketsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for boatownerviewtickets component.
  late BoatownerviewticketsModel boatownerviewticketsModel;

  @override
  void initState(BuildContext context) {
    boatownerviewticketsModel =
        createModel(context, () => BoatownerviewticketsModel());
  }

  @override
  void dispose() {
    boatownerviewticketsModel.dispose();
  }
}
