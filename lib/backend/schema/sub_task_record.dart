import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Contains split up jobs broken down by contractor
class SubTaskRecord extends FirestoreRecord {
  SubTaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "job_id" field.
  String? _jobId;
  String get jobId => _jobId ?? '';
  bool hasJobId() => _jobId != null;

  // "assigned_contractor" field.
  String? _assignedContractor;
  String get assignedContractor => _assignedContractor ?? '';
  bool hasAssignedContractor() => _assignedContractor != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "boat_number" field.
  int? _boatNumber;
  int get boatNumber => _boatNumber ?? 0;
  bool hasBoatNumber() => _boatNumber != null;

  // "boat_name" field.
  String? _boatName;
  String get boatName => _boatName ?? '';
  bool hasBoatName() => _boatName != null;

  // "contractor_notes" field.
  String? _contractorNotes;
  String get contractorNotes => _contractorNotes ?? '';
  bool hasContractorNotes() => _contractorNotes != null;

  // "sub_id" field.
  int? _subId;
  int get subId => _subId ?? 0;
  bool hasSubId() => _subId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "media" field.
  List<String>? _media;
  List<String> get media => _media ?? const [];
  bool hasMedia() => _media != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _jobId = snapshotData['job_id'] as String?;
    _assignedContractor = snapshotData['assigned_contractor'] as String?;
    _jobDescription = snapshotData['job_description'] as String?;
    _boatNumber = castToType<int>(snapshotData['boat_number']);
    _boatName = snapshotData['boat_name'] as String?;
    _contractorNotes = snapshotData['contractor_notes'] as String?;
    _subId = castToType<int>(snapshotData['sub_id']);
    _status = snapshotData['status'] as String?;
    _media = getDataList(snapshotData['media']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sub_task')
          : FirebaseFirestore.instance.collectionGroup('sub_task');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('sub_task').doc(id);

  static Stream<SubTaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubTaskRecord.fromSnapshot(s));

  static Future<SubTaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubTaskRecord.fromSnapshot(s));

  static SubTaskRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubTaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubTaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubTaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubTaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubTaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubTaskRecordData({
  String? jobId,
  String? assignedContractor,
  String? jobDescription,
  int? boatNumber,
  String? boatName,
  String? contractorNotes,
  int? subId,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'job_id': jobId,
      'assigned_contractor': assignedContractor,
      'job_description': jobDescription,
      'boat_number': boatNumber,
      'boat_name': boatName,
      'contractor_notes': contractorNotes,
      'sub_id': subId,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubTaskRecordDocumentEquality implements Equality<SubTaskRecord> {
  const SubTaskRecordDocumentEquality();

  @override
  bool equals(SubTaskRecord? e1, SubTaskRecord? e2) {
    const listEquality = ListEquality();
    return e1?.jobId == e2?.jobId &&
        e1?.assignedContractor == e2?.assignedContractor &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.boatNumber == e2?.boatNumber &&
        e1?.boatName == e2?.boatName &&
        e1?.contractorNotes == e2?.contractorNotes &&
        e1?.subId == e2?.subId &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.media, e2?.media);
  }

  @override
  int hash(SubTaskRecord? e) => const ListEquality().hash([
        e?.jobId,
        e?.assignedContractor,
        e?.jobDescription,
        e?.boatNumber,
        e?.boatName,
        e?.contractorNotes,
        e?.subId,
        e?.status,
        e?.media
      ]);

  @override
  bool isValidKey(Object? o) => o is SubTaskRecord;
}
