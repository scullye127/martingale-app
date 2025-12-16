import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "media" field.
  List<String>? _media;
  List<String> get media => _media ?? const [];
  bool hasMedia() => _media != null;

  // "subtask_ID" field.
  String? _subtaskID;
  String get subtaskID => _subtaskID ?? '';
  bool hasSubtaskID() => _subtaskID != null;

  // "parent_ID" field.
  String? _parentID;
  String get parentID => _parentID ?? '';
  bool hasParentID() => _parentID != null;

  // "subtask_title" field.
  String? _subtaskTitle;
  String get subtaskTitle => _subtaskTitle ?? '';
  bool hasSubtaskTitle() => _subtaskTitle != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _assignedContractor = snapshotData['assigned_contractor'] as String?;
    _jobDescription = snapshotData['job_description'] as String?;
    _boatNumber = castToType<int>(snapshotData['boat_number']);
    _boatName = snapshotData['boat_name'] as String?;
    _contractorNotes = snapshotData['contractor_notes'] as String?;
    _status = snapshotData['status'] as String?;
    _media = getDataList(snapshotData['media']);
    _subtaskID = snapshotData['subtask_ID'] as String?;
    _parentID = snapshotData['parent_ID'] as String?;
    _subtaskTitle = snapshotData['subtask_title'] as String?;
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
  String? assignedContractor,
  String? jobDescription,
  int? boatNumber,
  String? boatName,
  String? contractorNotes,
  String? status,
  String? subtaskID,
  String? parentID,
  String? subtaskTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assigned_contractor': assignedContractor,
      'job_description': jobDescription,
      'boat_number': boatNumber,
      'boat_name': boatName,
      'contractor_notes': contractorNotes,
      'status': status,
      'subtask_ID': subtaskID,
      'parent_ID': parentID,
      'subtask_title': subtaskTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubTaskRecordDocumentEquality implements Equality<SubTaskRecord> {
  const SubTaskRecordDocumentEquality();

  @override
  bool equals(SubTaskRecord? e1, SubTaskRecord? e2) {
    const listEquality = ListEquality();
    return e1?.assignedContractor == e2?.assignedContractor &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.boatNumber == e2?.boatNumber &&
        e1?.boatName == e2?.boatName &&
        e1?.contractorNotes == e2?.contractorNotes &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.media, e2?.media) &&
        e1?.subtaskID == e2?.subtaskID &&
        e1?.parentID == e2?.parentID &&
        e1?.subtaskTitle == e2?.subtaskTitle;
  }

  @override
  int hash(SubTaskRecord? e) => const ListEquality().hash([
        e?.assignedContractor,
        e?.jobDescription,
        e?.boatNumber,
        e?.boatName,
        e?.contractorNotes,
        e?.status,
        e?.media,
        e?.subtaskID,
        e?.parentID,
        e?.subtaskTitle
      ]);

  @override
  bool isValidKey(Object? o) => o is SubTaskRecord;
}
