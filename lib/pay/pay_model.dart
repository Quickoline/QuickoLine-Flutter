import '/flutter_flow/flutter_flow_util.dart';
import 'pay_widget.dart' show PayWidget;
import 'package:flutter/material.dart';

class PayModel extends FlutterFlowModel<PayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
