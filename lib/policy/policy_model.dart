import '/flutter_flow/flutter_flow_util.dart';
import 'policy_widget.dart' show PolicyWidget;
import 'package:flutter/material.dart';

class PolicyModel extends FlutterFlowModel<PolicyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
