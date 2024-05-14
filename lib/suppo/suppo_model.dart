import '/flutter_flow/flutter_flow_util.dart';
import 'suppo_widget.dart' show SuppoWidget;
import 'package:flutter/material.dart';

class SuppoModel extends FlutterFlowModel<SuppoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
