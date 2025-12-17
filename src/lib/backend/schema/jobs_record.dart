import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// database of all jobs submitted by users
class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "time_assigned" field.
  DateTime? _timeAssigned;
  DateTime? get timeAssigned => _timeAssigned;
  bool hasTimeAssigned() => _timeAssigned != null;

  // "time_completed" field.
  DateTime? _timeCompleted;
  DateTime? get timeCompleted => _timeCompleted;
  bool hasTimeCompleted() => _timeCompleted != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "boat_name" field.
  String? _boatName;
  String get boatName => _boatName ?? '';
  bool hasBoatName() => _boatName != null;

  // "boat_owner" field.
  String? _boatOwner;
  String get boatOwner => _boatOwner ?? '';
  bool hasBoatOwner() => _boatOwner != null;

  // "assigned_to" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  bool hasAssignedTo() => _assignedTo != null;

  // "media" field.
  List<String>? _media;
  List<String> get media => _media ?? const [];
  bool hasMedia() => _media != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "owner_number" field.
  String? _ownerNumber;
  String get ownerNumber => _ownerNumber ?? '';
  bool hasOwnerNumber() => _ownerNumber != null;

  // "contractor_details" field.
  String? _contractorDetails;
  String get contractorDetails => _contractorDetails ?? '';
  bool hasContractorDetails() => _contractorDetails != null;

  // "boat_reference" field.
  DocumentReference? _boatReference;
  DocumentReference? get boatReference => _boatReference;
  bool hasBoatReference() => _boatReference != null;

  // "videomedia" field.
  List<String>? _videomedia;
  List<String> get videomedia => _videomedia ?? const [];
  bool hasVideomedia() => _videomedia != null;

  // "job_ID" field.
  String? _jobID;
  String get jobID => _jobID ?? '';
  bool hasJobID() => _jobID != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _timeAssigned = snapshotData['time_assigned'] as DateTime?;
    _timeCompleted = snapshotData['time_completed'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _boatName = snapshotData['boat_name'] as String?;
    _boatOwner = snapshotData['boat_owner'] as String?;
    _assignedTo = snapshotData['assigned_to'] as String?;
    _media = getDataList(snapshotData['media']);
    _status = snapshotData['status'] as String?;
    _ownerNumber = snapshotData['owner_number'] as String?;
    _contractorDetails = snapshotData['contractor_details'] as String?;
    _boatReference = snapshotData['boat_reference'] as DocumentReference?;
    _videomedia = getDataList(snapshotData['videomedia']);
    _jobID = snapshotData['job_ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? title,
  DateTime? timeCreated,
  DateTime? timeAssigned,
  DateTime? timeCompleted,
  String? description,
  String? boatName,
  String? boatOwner,
  String? assignedTo,
  String? status,
  String? ownerNumber,
  String? contractorDetails,
  DocumentReference? boatReference,
  String? jobID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'time_created': timeCreated,
      'time_assigned': timeAssigned,
      'time_completed': timeCompleted,
      'description': description,
      'boat_name': boatName,
      'boat_owner': boatOwner,
      'assigned_to': assignedTo,
      'status': status,
      'owner_number': ownerNumber,
      'contractor_details': contractorDetails,
      'boat_reference': boatReference,
      'job_ID': jobID,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.timeAssigned == e2?.timeAssigned &&
        e1?.timeCompleted == e2?.timeCompleted &&
        e1?.description == e2?.description &&
        e1?.boatName == e2?.boatName &&
        e1?.boatOwner == e2?.boatOwner &&
        e1?.assignedTo == e2?.assignedTo &&
        listEquality.equals(e1?.media, e2?.media) &&
        e1?.status == e2?.status &&
        e1?.ownerNumber == e2?.ownerNumber &&
        e1?.contractorDetails == e2?.contractorDetails &&
        e1?.boatReference == e2?.boatReference &&
        listEquality.equals(e1?.videomedia, e2?.videomedia) &&
        e1?.jobID == e2?.jobID;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.timeCreated,
        e?.timeAssigned,
        e?.timeCompleted,
        e?.description,
        e?.boatName,
        e?.boatOwner,
        e?.assignedTo,
        e?.media,
        e?.status,
        e?.ownerNumber,
        e?.contractorDetails,
        e?.boatReference,
        e?.videomedia,
        e?.jobID
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
