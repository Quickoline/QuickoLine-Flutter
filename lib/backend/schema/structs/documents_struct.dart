// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DocumentsStruct extends FFFirebaseStruct {
  DocumentsStruct({
    String? aadhaarCard,
    String? photo,
    String? signature,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _aadhaarCard = aadhaarCard,
        _photo = photo,
        _signature = signature,
        super(firestoreUtilData);

  // "aadhaar_card" field.
  String? _aadhaarCard;
  String get aadhaarCard => _aadhaarCard ?? '';
  set aadhaarCard(String? val) => _aadhaarCard = val;
  bool hasAadhaarCard() => _aadhaarCard != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  set photo(String? val) => _photo = val;
  bool hasPhoto() => _photo != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  set signature(String? val) => _signature = val;
  bool hasSignature() => _signature != null;

  static DocumentsStruct fromMap(Map<String, dynamic> data) => DocumentsStruct(
        aadhaarCard: data['aadhaar_card'] as String?,
        photo: data['photo'] as String?,
        signature: data['signature'] as String?,
      );

  static DocumentsStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'aadhaar_card': _aadhaarCard,
        'photo': _photo,
        'signature': _signature,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'aadhaar_card': serializeParam(
          _aadhaarCard,
          ParamType.String,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.String,
        ),
        'signature': serializeParam(
          _signature,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentsStruct(
        aadhaarCard: deserializeParam(
          data['aadhaar_card'],
          ParamType.String,
          false,
        ),
        photo: deserializeParam(
          data['photo'],
          ParamType.String,
          false,
        ),
        signature: deserializeParam(
          data['signature'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentsStruct &&
        aadhaarCard == other.aadhaarCard &&
        photo == other.photo &&
        signature == other.signature;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([aadhaarCard, photo, signature]);
}

DocumentsStruct createDocumentsStruct({
  String? aadhaarCard,
  String? photo,
  String? signature,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentsStruct(
      aadhaarCard: aadhaarCard,
      photo: photo,
      signature: signature,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentsStruct? updateDocumentsStruct(
  DocumentsStruct? documents, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    documents
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentsStructData(
  Map<String, dynamic> firestoreData,
  DocumentsStruct? documents,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (documents == null) {
    return;
  }
  if (documents.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && documents.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentsData = getDocumentsFirestoreData(documents, forFieldValue);
  final nestedData = documentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = documents.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentsFirestoreData(
  DocumentsStruct? documents, [
  bool forFieldValue = false,
]) {
  if (documents == null) {
    return {};
  }
  final firestoreData = mapToFirestore(documents.toMap());

  // Add any Firestore field values
  documents.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentsListFirestoreData(
  List<DocumentsStruct>? documentss,
) =>
    documentss?.map((e) => getDocumentsFirestoreData(e, true)).toList() ?? [];
