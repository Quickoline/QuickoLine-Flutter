import '/flutter_flow/flutter_flow_util.dart';
import 'coming_soon_widget.dart' show ComingSoonWidget;
import 'package:flutter/material.dart';

class ComingSoonModel extends FlutterFlowModel<ComingSoonWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
