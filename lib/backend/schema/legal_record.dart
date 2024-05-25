import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LegalRecord extends FirestoreRecord {
  LegalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "pricing" field.
  double? _pricing;
  double get pricing => _pricing ?? 0.0;
  bool hasPricing() => _pricing != null;

  // "required_document" field.
  List<String>? _requiredDocument;
  List<String> get requiredDocument => _requiredDocument ?? const [];
  bool hasRequiredDocument() => _requiredDocument != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _pricing = castToType<double>(snapshotData['pricing']);
    _requiredDocument = getDataList(snapshotData['required_document']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('legal');

  static Stream<LegalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LegalRecord.fromSnapshot(s));

  static Future<LegalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LegalRecord.fromSnapshot(s));

  static LegalRecord fromSnapshot(DocumentSnapshot snapshot) => LegalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LegalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LegalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LegalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LegalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLegalRecordData({
  String? name,
  double? pricing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'pricing': pricing,
    }.withoutNulls,
  );

  return firestoreData;
}

class LegalRecordDocumentEquality implements Equality<LegalRecord> {
  const LegalRecordDocumentEquality();

  @override
  bool equals(LegalRecord? e1, LegalRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.pricing == e2?.pricing &&
        listEquality.equals(e1?.requiredDocument, e2?.requiredDocument);
  }

  @override
  int hash(LegalRecord? e) =>
      const ListEquality().hash([e?.name, e?.pricing, e?.requiredDocument]);

  @override
  bool isValidKey(Object? o) => o is LegalRecord;
}
