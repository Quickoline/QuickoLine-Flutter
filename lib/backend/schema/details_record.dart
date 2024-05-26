import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailsRecord extends FirestoreRecord {
  DetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "app_start_date" field.
  DateTime? _appStartDate;
  DateTime? get appStartDate => _appStartDate;
  bool hasAppStartDate() => _appStartDate != null;

  // "app_end_date" field.
  DateTime? _appEndDate;
  DateTime? get appEndDate => _appEndDate;
  bool hasAppEndDate() => _appEndDate != null;

  // "fee_last_date" field.
  DateTime? _feeLastDate;
  DateTime? get feeLastDate => _feeLastDate;
  bool hasFeeLastDate() => _feeLastDate != null;

  // "correction_date" field.
  DateTime? _correctionDate;
  DateTime? get correctionDate => _correctionDate;
  bool hasCorrectionDate() => _correctionDate != null;

  // "exam_date" field.
  List<DateTime>? _examDate;
  List<DateTime> get examDate => _examDate ?? const [];
  bool hasExamDate() => _examDate != null;

  // "exam_city_date" field.
  DateTime? _examCityDate;
  DateTime? get examCityDate => _examCityDate;
  bool hasExamCityDate() => _examCityDate != null;

  // "admit_card_date" field.
  DateTime? _admitCardDate;
  DateTime? get admitCardDate => _admitCardDate;
  bool hasAdmitCardDate() => _admitCardDate != null;

  // "answer_key_date" field.
  DateTime? _answerKeyDate;
  DateTime? get answerKeyDate => _answerKeyDate;
  bool hasAnswerKeyDate() => _answerKeyDate != null;

  // "result_date" field.
  DateTime? _resultDate;
  DateTime? get resultDate => _resultDate;
  bool hasResultDate() => _resultDate != null;

  // "required_documents" field.
  List<String>? _requiredDocuments;
  List<String> get requiredDocuments => _requiredDocuments ?? const [];
  bool hasRequiredDocuments() => _requiredDocuments != null;

  // "exam_name" field.
  String? _examName;
  String get examName => _examName ?? '';
  bool hasExamName() => _examName != null;

  // "service_charge" field.
  double? _serviceCharge;
  double get serviceCharge => _serviceCharge ?? 0.0;
  bool hasServiceCharge() => _serviceCharge != null;

  // "applicationfee_Gen" field.
  int? _applicationfeeGen;
  int get applicationfeeGen => _applicationfeeGen ?? 0;
  bool hasApplicationfeeGen() => _applicationfeeGen != null;

  // "applicationfee_St" field.
  int? _applicationfeeSt;
  int get applicationfeeSt => _applicationfeeSt ?? 0;
  bool hasApplicationfeeSt() => _applicationfeeSt != null;

  // "applicationfee_obc" field.
  int? _applicationfeeObc;
  int get applicationfeeObc => _applicationfeeObc ?? 0;
  bool hasApplicationfeeObc() => _applicationfeeObc != null;

  // "applicationfee_sc" field.
  int? _applicationfeeSc;
  int get applicationfeeSc => _applicationfeeSc ?? 0;
  bool hasApplicationfeeSc() => _applicationfeeSc != null;

  // "applicationfee_ews" field.
  int? _applicationfeeEws;
  int get applicationfeeEws => _applicationfeeEws ?? 0;
  bool hasApplicationfeeEws() => _applicationfeeEws != null;

  void _initializeFields() {
    _appStartDate = snapshotData['app_start_date'] as DateTime?;
    _appEndDate = snapshotData['app_end_date'] as DateTime?;
    _feeLastDate = snapshotData['fee_last_date'] as DateTime?;
    _correctionDate = snapshotData['correction_date'] as DateTime?;
    _examDate = getDataList(snapshotData['exam_date']);
    _examCityDate = snapshotData['exam_city_date'] as DateTime?;
    _admitCardDate = snapshotData['admit_card_date'] as DateTime?;
    _answerKeyDate = snapshotData['answer_key_date'] as DateTime?;
    _resultDate = snapshotData['result_date'] as DateTime?;
    _requiredDocuments = getDataList(snapshotData['required_documents']);
    _examName = snapshotData['exam_name'] as String?;
    _serviceCharge = castToType<double>(snapshotData['service_charge']);
    _applicationfeeGen = castToType<int>(snapshotData['applicationfee_Gen']);
    _applicationfeeSt = castToType<int>(snapshotData['applicationfee_St']);
    _applicationfeeObc = castToType<int>(snapshotData['applicationfee_obc']);
    _applicationfeeSc = castToType<int>(snapshotData['applicationfee_sc']);
    _applicationfeeEws = castToType<int>(snapshotData['applicationfee_ews']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('details');

  static Stream<DetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DetailsRecord.fromSnapshot(s));

  static Future<DetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DetailsRecord.fromSnapshot(s));

  static DetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDetailsRecordData({
  DateTime? appStartDate,
  DateTime? appEndDate,
  DateTime? feeLastDate,
  DateTime? correctionDate,
  DateTime? examCityDate,
  DateTime? admitCardDate,
  DateTime? answerKeyDate,
  DateTime? resultDate,
  String? examName,
  double? serviceCharge,
  int? applicationfeeGen,
  int? applicationfeeSt,
  int? applicationfeeObc,
  int? applicationfeeSc,
  int? applicationfeeEws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'app_start_date': appStartDate,
      'app_end_date': appEndDate,
      'fee_last_date': feeLastDate,
      'correction_date': correctionDate,
      'exam_city_date': examCityDate,
      'admit_card_date': admitCardDate,
      'answer_key_date': answerKeyDate,
      'result_date': resultDate,
      'exam_name': examName,
      'service_charge': serviceCharge,
      'applicationfee_Gen': applicationfeeGen,
      'applicationfee_St': applicationfeeSt,
      'applicationfee_obc': applicationfeeObc,
      'applicationfee_sc': applicationfeeSc,
      'applicationfee_ews': applicationfeeEws,
    }.withoutNulls,
  );

  return firestoreData;
}

class DetailsRecordDocumentEquality implements Equality<DetailsRecord> {
  const DetailsRecordDocumentEquality();

  @override
  bool equals(DetailsRecord? e1, DetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.appStartDate == e2?.appStartDate &&
        e1?.appEndDate == e2?.appEndDate &&
        e1?.feeLastDate == e2?.feeLastDate &&
        e1?.correctionDate == e2?.correctionDate &&
        listEquality.equals(e1?.examDate, e2?.examDate) &&
        e1?.examCityDate == e2?.examCityDate &&
        e1?.admitCardDate == e2?.admitCardDate &&
        e1?.answerKeyDate == e2?.answerKeyDate &&
        e1?.resultDate == e2?.resultDate &&
        listEquality.equals(e1?.requiredDocuments, e2?.requiredDocuments) &&
        e1?.examName == e2?.examName &&
        e1?.serviceCharge == e2?.serviceCharge &&
        e1?.applicationfeeGen == e2?.applicationfeeGen &&
        e1?.applicationfeeSt == e2?.applicationfeeSt &&
        e1?.applicationfeeObc == e2?.applicationfeeObc &&
        e1?.applicationfeeSc == e2?.applicationfeeSc &&
        e1?.applicationfeeEws == e2?.applicationfeeEws;
  }

  @override
  int hash(DetailsRecord? e) => const ListEquality().hash([
        e?.appStartDate,
        e?.appEndDate,
        e?.feeLastDate,
        e?.correctionDate,
        e?.examDate,
        e?.examCityDate,
        e?.admitCardDate,
        e?.answerKeyDate,
        e?.resultDate,
        e?.requiredDocuments,
        e?.examName,
        e?.serviceCharge,
        e?.applicationfeeGen,
        e?.applicationfeeSt,
        e?.applicationfeeObc,
        e?.applicationfeeSc,
        e?.applicationfeeEws
      ]);

  @override
  bool isValidKey(Object? o) => o is DetailsRecord;
}
