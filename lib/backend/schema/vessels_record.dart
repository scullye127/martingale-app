import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VesselsRecord extends FirestoreRecord {
  VesselsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vessel_name" field.
  String? _vesselName;
  String get vesselName => _vesselName ?? '';
  bool hasVesselName() => _vesselName != null;

  // "hull_id" field.
  String? _hullId;
  String get hullId => _hullId ?? '';
  bool hasHullId() => _hullId != null;

  // "owner_name" field.
  String? _ownerName;
  String get ownerName => _ownerName ?? '';
  bool hasOwnerName() => _ownerName != null;

  // "home_port" field.
  String? _homePort;
  String get homePort => _homePort ?? '';
  bool hasHomePort() => _homePort != null;

  // "parts_reference" field.
  DocumentReference? _partsReference;
  DocumentReference? get partsReference => _partsReference;
  bool hasPartsReference() => _partsReference != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _vesselName = snapshotData['vessel_name'] as String?;
    _hullId = snapshotData['hull_id'] as String?;
    _ownerName = snapshotData['owner_name'] as String?;
    _homePort = snapshotData['home_port'] as String?;
    _partsReference = snapshotData['parts_reference'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('vessels')
          : FirebaseFirestore.instance.collectionGroup('vessels');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('vessels').doc(id);

  static Stream<VesselsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VesselsRecord.fromSnapshot(s));

  static Future<VesselsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VesselsRecord.fromSnapshot(s));

  static VesselsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VesselsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VesselsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VesselsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VesselsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VesselsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVesselsRecordData({
  String? vesselName,
  String? hullId,
  String? ownerName,
  String? homePort,
  DocumentReference? partsReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vessel_name': vesselName,
      'hull_id': hullId,
      'owner_name': ownerName,
      'home_port': homePort,
      'parts_reference': partsReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class VesselsRecordDocumentEquality implements Equality<VesselsRecord> {
  const VesselsRecordDocumentEquality();

  @override
  bool equals(VesselsRecord? e1, VesselsRecord? e2) {
    return e1?.vesselName == e2?.vesselName &&
        e1?.hullId == e2?.hullId &&
        e1?.ownerName == e2?.ownerName &&
        e1?.homePort == e2?.homePort &&
        e1?.partsReference == e2?.partsReference;
  }

  @override
  int hash(VesselsRecord? e) => const ListEquality().hash(
      [e?.vesselName, e?.hullId, e?.ownerName, e?.homePort, e?.partsReference]);

  @override
  bool isValidKey(Object? o) => o is VesselsRecord;
}
