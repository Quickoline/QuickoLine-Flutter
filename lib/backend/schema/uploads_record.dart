import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UploadsRecord extends FirestoreRecord {
  UploadsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('uploads');

  static Stream<UploadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UploadsRecord.fromSnapshot(s));

  static Future<UploadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UploadsRecord.fromSnapshot(s));

  static UploadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UploadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UploadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UploadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UploadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UploadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUploadsRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class UploadsRecordDocumentEquality implements Equality<UploadsRecord> {
  const UploadsRecordDocumentEquality();

  @override
  bool equals(UploadsRecord? e1, UploadsRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(UploadsRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is UploadsRecord;
}
