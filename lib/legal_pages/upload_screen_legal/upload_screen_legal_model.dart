import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_screen_legal_widget.dart' show UploadScreenLegalWidget;
import 'package:flutter/material.dart';

class UploadScreenLegalModel extends FlutterFlowModel<UploadScreenLegalWidget> {
  ///  Local state fields for this page.

  List<DocumentStruct> savePhotos = [];
  void addToSavePhotos(DocumentStruct item) => savePhotos.add(item);
  void removeFromSavePhotos(DocumentStruct item) => savePhotos.remove(item);
  void removeAtIndexFromSavePhotos(int index) => savePhotos.removeAt(index);
  void insertAtIndexInSavePhotos(int index, DocumentStruct item) =>
      savePhotos.insert(index, item);
  void updateSavePhotosAtIndex(int index, Function(DocumentStruct) updateFn) =>
      savePhotos[index] = updateFn(savePhotos[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
