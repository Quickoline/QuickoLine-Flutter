import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'legal_details_widget.dart' show LegalDetailsWidget;
import 'package:flutter/material.dart';

class LegalDetailsModel extends FlutterFlowModel<LegalDetailsWidget> {
  ///  Local state fields for this page.

  int index = 0;

  List<DocumentStruct> listOfDatatypes = [];
  void addToListOfDatatypes(DocumentStruct item) => listOfDatatypes.add(item);
  void removeFromListOfDatatypes(DocumentStruct item) =>
      listOfDatatypes.remove(item);
  void removeAtIndexFromListOfDatatypes(int index) =>
      listOfDatatypes.removeAt(index);
  void insertAtIndexInListOfDatatypes(int index, DocumentStruct item) =>
      listOfDatatypes.insert(index, item);
  void updateListOfDatatypesAtIndex(
          int index, Function(DocumentStruct) updateFn) =>
      listOfDatatypes[index] = updateFn(listOfDatatypes[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
