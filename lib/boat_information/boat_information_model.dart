import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'boat_information_widget.dart' show BoatInformationWidget;
import 'package:flutter/material.dart';

class BoatInformationModel extends FlutterFlowModel<BoatInformationWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> allBoats = [];
  void addToAllBoats(DocumentReference item) => allBoats.add(item);
  void removeFromAllBoats(DocumentReference item) => allBoats.remove(item);
  void removeAtIndexFromAllBoats(int index) => allBoats.removeAt(index);
  void insertAtIndexInAllBoats(int index, DocumentReference item) =>
      allBoats.insert(index, item);
  void updateAllBoatsAtIndex(int index, Function(DocumentReference) updateFn) =>
      allBoats[index] = updateFn(allBoats[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for EngineMake widget.
  FocusNode? engineMakeFocusNode;
  TextEditingController? engineMakeTextController;
  String? Function(BuildContext, String?)? engineMakeTextControllerValidator;
  // State field(s) for EngineModel widget.
  FocusNode? engineModelFocusNode;
  TextEditingController? engineModelTextController;
  String? Function(BuildContext, String?)? engineModelTextControllerValidator;
  // State field(s) for MFD1make widget.
  FocusNode? mFD1makeFocusNode;
  TextEditingController? mFD1makeTextController;
  String? Function(BuildContext, String?)? mFD1makeTextControllerValidator;
  // State field(s) for MFD1model widget.
  FocusNode? mFD1modelFocusNode;
  TextEditingController? mFD1modelTextController;
  String? Function(BuildContext, String?)? mFD1modelTextControllerValidator;
  // State field(s) for GPSAntennamake widget.
  FocusNode? gPSAntennamakeFocusNode;
  TextEditingController? gPSAntennamakeTextController;
  String? Function(BuildContext, String?)?
      gPSAntennamakeTextControllerValidator;
  // State field(s) for GPSAntennamodel widget.
  FocusNode? gPSAntennamodelFocusNode;
  TextEditingController? gPSAntennamodelTextController;
  String? Function(BuildContext, String?)?
      gPSAntennamodelTextControllerValidator;
  // State field(s) for Internetmake widget.
  FocusNode? internetmakeFocusNode;
  TextEditingController? internetmakeTextController;
  String? Function(BuildContext, String?)? internetmakeTextControllerValidator;
  // State field(s) for Internetmodel widget.
  FocusNode? internetmodelFocusNode;
  TextEditingController? internetmodelTextController;
  String? Function(BuildContext, String?)? internetmodelTextControllerValidator;
  // State field(s) for HouseBank widget.
  FocusNode? houseBankFocusNode;
  TextEditingController? houseBankTextController;
  String? Function(BuildContext, String?)? houseBankTextControllerValidator;
  // State field(s) for BatteryMonitormake widget.
  FocusNode? batteryMonitormakeFocusNode;
  TextEditingController? batteryMonitormakeTextController;
  String? Function(BuildContext, String?)?
      batteryMonitormakeTextControllerValidator;
  // State field(s) for BatteryMonitormodel widget.
  FocusNode? batteryMonitormodelFocusNode;
  TextEditingController? batteryMonitormodelTextController;
  String? Function(BuildContext, String?)?
      batteryMonitormodelTextControllerValidator;
  // State field(s) for Inverter widget.
  FocusNode? inverterFocusNode;
  TextEditingController? inverterTextController;
  String? Function(BuildContext, String?)? inverterTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    engineMakeFocusNode?.dispose();
    engineMakeTextController?.dispose();

    engineModelFocusNode?.dispose();
    engineModelTextController?.dispose();

    mFD1makeFocusNode?.dispose();
    mFD1makeTextController?.dispose();

    mFD1modelFocusNode?.dispose();
    mFD1modelTextController?.dispose();

    gPSAntennamakeFocusNode?.dispose();
    gPSAntennamakeTextController?.dispose();

    gPSAntennamodelFocusNode?.dispose();
    gPSAntennamodelTextController?.dispose();

    internetmakeFocusNode?.dispose();
    internetmakeTextController?.dispose();

    internetmodelFocusNode?.dispose();
    internetmodelTextController?.dispose();

    houseBankFocusNode?.dispose();
    houseBankTextController?.dispose();

    batteryMonitormakeFocusNode?.dispose();
    batteryMonitormakeTextController?.dispose();

    batteryMonitormodelFocusNode?.dispose();
    batteryMonitormodelTextController?.dispose();

    inverterFocusNode?.dispose();
    inverterTextController?.dispose();
  }
}
