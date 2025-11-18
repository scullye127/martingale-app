import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'update_task_model.dart';
export 'update_task_model.dart';

class UpdateTaskWidget extends StatefulWidget {
  const UpdateTaskWidget({super.key});

  @override
  State<UpdateTaskWidget> createState() => _UpdateTaskWidgetState();
}

class _UpdateTaskWidgetState extends State<UpdateTaskWidget> {
  late UpdateTaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateTaskModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
