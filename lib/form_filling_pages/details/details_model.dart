import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  Local state fields for this page.

  int index = 0;

  List<DocumentStruct> listOfDatatype = [];
  void addToListOfDatatype(DocumentStruct item) => listOfDatatype.add(item);
  void removeFromListOfDatatype(DocumentStruct item) =>
      listOfDatatype.remove(item);
  void removeAtIndexFromListOfDatatype(int index) =>
      listOfDatatype.removeAt(index);
  void insertAtIndexInListOfDatatype(int index, DocumentStruct item) =>
      listOfDatatype.insert(index, item);
  void updateListOfDatatypeAtIndex(
          int index, Function(DocumentStruct) updateFn) =>
      listOfDatatype[index] = updateFn(listOfDatatype[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
