import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VesselDatabaseRecord extends FirestoreRecord {
  VesselDatabaseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vessel_name" field.
  String? _vesselName;
  String get vesselName => _vesselName ?? '';
  bool hasVesselName() => _vesselName != null;

  // "vessel_owner" field.
  String? _vesselOwner;
  String get vesselOwner => _vesselOwner ?? '';
  bool hasVesselOwner() => _vesselOwner != null;

  // "vessel_number" field.
  int? _vesselNumber;
  int get vesselNumber => _vesselNumber ?? 0;
  bool hasVesselNumber() => _vesselNumber != null;

  void _initializeFields() {
    _vesselName = snapshotData['vessel_name'] as String?;
    _vesselOwner = snapshotData['vessel_owner'] as String?;
    _vesselNumber = castToType<int>(snapshotData['vessel_number']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vessel_database');

  static Stream<VesselDatabaseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VesselDatabaseRecord.fromSnapshot(s));

  static Future<VesselDatabaseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VesselDatabaseRecord.fromSnapshot(s));

  static VesselDatabaseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VesselDatabaseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VesselDatabaseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VesselDatabaseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VesselDatabaseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VesselDatabaseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVesselDatabaseRecordData({
  String? vesselName,
  String? vesselOwner,
  int? vesselNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vessel_name': vesselName,
      'vessel_owner': vesselOwner,
      'vessel_number': vesselNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class VesselDatabaseRecordDocumentEquality
    implements Equality<VesselDatabaseRecord> {
  const VesselDatabaseRecordDocumentEquality();

  @override
  bool equals(VesselDatabaseRecord? e1, VesselDatabaseRecord? e2) {
    return e1?.vesselName == e2?.vesselName &&
        e1?.vesselOwner == e2?.vesselOwner &&
        e1?.vesselNumber == e2?.vesselNumber;
  }

  @override
  int hash(VesselDatabaseRecord? e) => const ListEquality()
      .hash([e?.vesselName, e?.vesselOwner, e?.vesselNumber]);

  @override
  bool isValidKey(Object? o) => o is VesselDatabaseRecord;
}
