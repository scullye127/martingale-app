import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/service_request_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'admin_page_submitted_model.dart';
export 'admin_page_submitted_model.dart';

class AdminPageSubmittedWidget extends StatefulWidget {
  const AdminPageSubmittedWidget({super.key});

  static String routeName = 'AdminPage-submitted';
  static String routePath = '/adminPageSubmitted';

  @override
  State<AdminPageSubmittedWidget> createState() =>
      _AdminPageSubmittedWidgetState();
}

class _AdminPageSubmittedWidgetState extends State<AdminPageSubmittedWidget> {
  late AdminPageSubmittedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPageSubmittedModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminPage-submitted'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_SUBMITTED_AdminPage-submitted_ON_I');
      logFirebaseEvent('AdminPage-submitted_firestore_query');
      _model.submittedTasks = await queryJobsRecordOnce(
        queryBuilder: (jobsRecord) => jobsRecord.where(
          'status',
          isEqualTo: 'Submitted',
        ),
      );
      logFirebaseEvent('AdminPage-submitted_rebuild_page');
      safeSetState(() {});
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
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Submitted Requests',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  StreamBuilder<List<JobsRecord>>(
                    stream: queryJobsRecord(
                      queryBuilder: (jobsRecord) => jobsRecord.where(
                        'status',
                        isEqualTo: 'Submitted',
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<JobsRecord> listViewJobsRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewJobsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewJobsRecord =
                              listViewJobsRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsets.all(12.0),
                            child: ServiceRequestWidget(
                              key: Key(
                                  'Keyijl_${listViewIndex}_of_${listViewJobsRecordList.length}'),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_SUBMITTED_addBoatButton_ON_TAP');
                        logFirebaseEvent('addBoatButton_navigate_to');

                        context.pushNamed(BoatCreateAdminWidget.routeName);
                      },
                      text: 'Add a Boat',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).logoGrey,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('ADMIN_SUBMITTED_LOG_OUT_BTN_ON_TAP');
                        logFirebaseEvent('Button_auth');
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth(
                            LoginWidget.routeName, context.mounted);
                      },
                      text: 'Log Out',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).logoGrey,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).logoGrey,
                            icon: Icon(
                              Icons.home_repair_service,
                              color: FlutterFlowTheme.of(context).logoYellow,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_SUBMITTED_home_repair_service_ICN_');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.pushNamed(
                                  AdminPageSubmittedWidget.routeName);
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).logoGrey,
                            icon: Icon(
                              Icons.work_history,
                              color: FlutterFlowTheme.of(context).logoYellow,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_SUBMITTED_work_history_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_to');

                              context
                                  .pushNamed(AdminPageAssignedWidget.routeName);
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).logoGrey,
                            icon: Icon(
                              Icons.check_circle,
                              color: FlutterFlowTheme.of(context).logoYellow,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_SUBMITTED_check_circle_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.pushNamed(
                                  AdminPageCompletedWidget.routeName);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
