import '/auth/firebase_auth/auth_util.dart';
import '/components/bottom_nav_bar_widget.dart';
import '/components/contractor_task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'contractor_home_page_model.dart';
export 'contractor_home_page_model.dart';

class ContractorHomePageWidget extends StatefulWidget {
  const ContractorHomePageWidget({super.key});

  static String routeName = 'ContractorHomePage';
  static String routePath = '/contractorHomePage';

  @override
  State<ContractorHomePageWidget> createState() =>
      _ContractorHomePageWidgetState();
}

class _ContractorHomePageWidgetState extends State<ContractorHomePageWidget> {
  late ContractorHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContractorHomePageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ContractorHomePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CONTRACTOR_HOME_ContractorHomePage_ON_IN');
      if (valueOrDefault<bool>(currentUserDocument?.isCreated, false) ==
          false) {
        logFirebaseEvent('ContractorHomePage_navigate_to');

        context.goNamed(ContractorAccountCreationWidget.routeName);
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xFF2B3745),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/martingaleLogo.png',
                fit: BoxFit.contain,
                alignment: Alignment(-1.0, 0.0),
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.contractorTaskModel,
                            updateCallback: () => safeSetState(() {}),
                            child: ContractorTaskWidget(
                              key: ValueKey('contractorTask_gme1'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BottomNavBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
