import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar_model.dart';
export 'bottom_nav_bar_model.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late BottomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: 360.0,
              height: 70.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).logoGrey,
                    Color(0xFF2A3540)
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, -1.0),
                  end: AlignmentDirectional(-1.0, 1.0),
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.house,
                      color: FlutterFlowTheme.of(context).logoYellow,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('BOTTOM_NAV_BAR_COMP_house_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_navigate_to');

                      context.pushNamed(DummyLoaderWidget.routeName);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.person,
                      color: FlutterFlowTheme.of(context).logoYellow,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('BOTTOM_NAV_BAR_COMP_person_ICN_ON_TAP');
                      if (valueOrDefault(currentUserDocument?.userRole, '') ==
                          'contractor') {
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed(
                            ContractorAccountCreationWidget.routeName);
                      } else {
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed(OwnerAccountCreationWidget.routeName);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
