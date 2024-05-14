import '/flutter_flow/flutter_flow_util.dart';
import 'formwp_widget.dart' show FormwpWidget;
import 'package:flutter/material.dart';

class FormwpModel extends FlutterFlowModel<FormwpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
