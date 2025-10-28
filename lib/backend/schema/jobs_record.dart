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

  // "boat_owner" field.
  String? _boatOwner;
  String get boatOwner => _boatOwner ?? '';
  bool hasBoatOwner() => _boatOwner != null;

  // "boat_name" field.
  String? _boatName;
  String get boatName => _boatName ?? '';
  bool hasBoatName() => _boatName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _timeAssigned = snapshotData['time_assigned'] as DateTime?;
    _timeCompleted = snapshotData['time_completed'] as DateTime?;
    _boatOwner = snapshotData['boat_owner'] as String?;
    _boatName = snapshotData['boat_name'] as String?;
    _description = snapshotData['description'] as String?;
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
  String? boatOwner,
  String? boatName,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'time_created': timeCreated,
      'time_assigned': timeAssigned,
      'time_completed': timeCompleted,
      'boat_owner': boatOwner,
      'boat_name': boatName,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.timeAssigned == e2?.timeAssigned &&
        e1?.timeCompleted == e2?.timeCompleted &&
        e1?.boatOwner == e2?.boatOwner &&
        e1?.boatName == e2?.boatName &&
        e1?.description == e2?.description;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.timeCreated,
        e?.timeAssigned,
        e?.timeCompleted,
        e?.boatOwner,
        e?.boatName,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
