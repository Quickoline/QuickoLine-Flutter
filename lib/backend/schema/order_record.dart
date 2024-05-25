import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "order_status" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  // "service_name" field.
  DocumentReference? _serviceName;
  DocumentReference? get serviceName => _serviceName;
  bool hasServiceName() => _serviceName != null;

  // "legal_service_name" field.
  DocumentReference? _legalServiceName;
  DocumentReference? get legalServiceName => _legalServiceName;
  bool hasLegalServiceName() => _legalServiceName != null;

  // "document" field.
  List<DocumentStruct>? _document;
  List<DocumentStruct> get document => _document ?? const [];
  bool hasDocument() => _document != null;

  void _initializeFields() {
    _orderStatus = snapshotData['order_status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _serviceName = snapshotData['service_name'] as DocumentReference?;
    _legalServiceName =
        snapshotData['legal_service_name'] as DocumentReference?;
    _document = getStructList(
      snapshotData['document'],
      DocumentStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? orderStatus,
  DateTime? createdAt,
  DocumentReference? userReference,
  DocumentReference? serviceName,
  DocumentReference? legalServiceName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order_status': orderStatus,
      'created_at': createdAt,
      'user_reference': userReference,
      'service_name': serviceName,
      'legal_service_name': legalServiceName,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderStatus == e2?.orderStatus &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userReference == e2?.userReference &&
        e1?.serviceName == e2?.serviceName &&
        e1?.legalServiceName == e2?.legalServiceName &&
        listEquality.equals(e1?.document, e2?.document);
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.orderStatus,
        e?.createdAt,
        e?.userReference,
        e?.serviceName,
        e?.legalServiceName,
        e?.document
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
