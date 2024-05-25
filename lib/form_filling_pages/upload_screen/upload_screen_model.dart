import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_screen_widget.dart' show UploadScreenWidget;
import 'package:flutter/material.dart';

class UploadScreenModel extends FlutterFlowModel<UploadScreenWidget> {
  ///  Local state fields for this page.

  List<DocumentStruct> savePhoto = [];
  void addToSavePhoto(DocumentStruct item) => savePhoto.add(item);
  void removeFromSavePhoto(DocumentStruct item) => savePhoto.remove(item);
  void removeAtIndexFromSavePhoto(int index) => savePhoto.removeAt(index);
  void insertAtIndexInSavePhoto(int index, DocumentStruct item) =>
      savePhoto.insert(index, item);
  void updateSavePhotoAtIndex(int index, Function(DocumentStruct) updateFn) =>
      savePhoto[index] = updateFn(savePhoto[index]);

  int? indexing;

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
