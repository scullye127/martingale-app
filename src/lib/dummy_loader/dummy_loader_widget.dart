import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dummy_loader_model.dart';
export 'dummy_loader_model.dart';

class DummyLoaderWidget extends StatefulWidget {
  const DummyLoaderWidget({super.key});

  static String routeName = 'dummyLoader';
  static String routePath = '/dummyLoader';

  @override
  State<DummyLoaderWidget> createState() => _DummyLoaderWidgetState();
}

class _DummyLoaderWidgetState extends State<DummyLoaderWidget> {
  late DummyLoaderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DummyLoaderModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'dummyLoader'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DUMMY_LOADER_dummyLoader_ON_INIT_STATE');
      if (valueOrDefault(currentUserDocument?.userRole, '') == 'admin') {
        logFirebaseEvent('dummyLoader_navigate_to');

        context.goNamed(AdminHomeWidget.routeName);
      } else {
        if (valueOrDefault(currentUserDocument?.userRole, '') == 'contractor') {
          logFirebaseEvent('dummyLoader_navigate_to');

          context.goNamed(ContractorHomePageWidget.routeName);
        } else {
          logFirebaseEvent('dummyLoader_navigate_to');

          context.goNamed(OwnerHomePageWidget.routeName);
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
