import '/flutter_flow/flutter_flow_util.dart';
import 'sidebar_widget.dart' show SidebarWidget;
import 'package:flutter/material.dart';

class SidebarModel extends FlutterFlowModel<SidebarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
