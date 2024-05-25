// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DocumentStruct extends FFFirebaseStruct {
  DocumentStruct({
    String? documentName,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _documentName = documentName,
        _image = image,
        super(firestoreUtilData);

  // "document_name" field.
  String? _documentName;
  String get documentName => _documentName ?? '';
  set documentName(String? val) => _documentName = val;
  bool hasDocumentName() => _documentName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static DocumentStruct fromMap(Map<String, dynamic> data) => DocumentStruct(
        documentName: data['document_name'] as String?,
        image: data['image'] as String?,
      );

  static DocumentStruct? maybeFromMap(dynamic data) =>
      data is Map ? DocumentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'document_name': _documentName,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'document_name': serializeParam(
          _documentName,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentStruct(
        documentName: deserializeParam(
          data['document_name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentStruct &&
        documentName == other.documentName &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([documentName, image]);
}

DocumentStruct createDocumentStruct({
  String? documentName,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentStruct(
      documentName: documentName,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentStruct? updateDocumentStruct(
  DocumentStruct? document, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    document
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentStructData(
  Map<String, dynamic> firestoreData,
  DocumentStruct? document,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (document == null) {
    return;
  }
  if (document.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && document.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentData = getDocumentFirestoreData(document, forFieldValue);
  final nestedData = documentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = document.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentFirestoreData(
  DocumentStruct? document, [
  bool forFieldValue = false,
]) {
  if (document == null) {
    return {};
  }
  final firestoreData = mapToFirestore(document.toMap());

  // Add any Firestore field values
  document.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentListFirestoreData(
  List<DocumentStruct>? documents,
) =>
    documents?.map((e) => getDocumentFirestoreData(e, true)).toList() ?? [];
