// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LegalDocumentStruct extends FFFirebaseStruct {
  LegalDocumentStruct({
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

  static LegalDocumentStruct fromMap(Map<String, dynamic> data) =>
      LegalDocumentStruct(
        aadhaarCard: data['aadhaar_card'] as String?,
        photo: data['photo'] as String?,
        signature: data['signature'] as String?,
      );

  static LegalDocumentStruct? maybeFromMap(dynamic data) => data is Map
      ? LegalDocumentStruct.fromMap(data.cast<String, dynamic>())
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

  static LegalDocumentStruct fromSerializableMap(Map<String, dynamic> data) =>
      LegalDocumentStruct(
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
  String toString() => 'LegalDocumentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LegalDocumentStruct &&
        aadhaarCard == other.aadhaarCard &&
        photo == other.photo &&
        signature == other.signature;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([aadhaarCard, photo, signature]);
}

LegalDocumentStruct createLegalDocumentStruct({
  String? aadhaarCard,
  String? photo,
  String? signature,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LegalDocumentStruct(
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

LegalDocumentStruct? updateLegalDocumentStruct(
  LegalDocumentStruct? legalDocument, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    legalDocument
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLegalDocumentStructData(
  Map<String, dynamic> firestoreData,
  LegalDocumentStruct? legalDocument,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (legalDocument == null) {
    return;
  }
  if (legalDocument.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && legalDocument.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final legalDocumentData =
      getLegalDocumentFirestoreData(legalDocument, forFieldValue);
  final nestedData =
      legalDocumentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = legalDocument.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLegalDocumentFirestoreData(
  LegalDocumentStruct? legalDocument, [
  bool forFieldValue = false,
]) {
  if (legalDocument == null) {
    return {};
  }
  final firestoreData = mapToFirestore(legalDocument.toMap());

  // Add any Firestore field values
  legalDocument.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLegalDocumentListFirestoreData(
  List<LegalDocumentStruct>? legalDocuments,
) =>
    legalDocuments
        ?.map((e) => getLegalDocumentFirestoreData(e, true))
        .toList() ??
    [];
