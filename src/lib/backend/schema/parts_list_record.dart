import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Links to a list of parts for every boat, references the boat, and the boat
/// references it
class PartsListRecord extends FirestoreRecord {
  PartsListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "boat_reference" field.
  DocumentReference? _boatReference;
  DocumentReference? get boatReference => _boatReference;
  bool hasBoatReference() => _boatReference != null;

  // "parts" field.
  List<PartStruct>? _parts;
  List<PartStruct> get parts => _parts ?? const [];
  bool hasParts() => _parts != null;

  void _initializeFields() {
    _boatReference = snapshotData['boat_reference'] as DocumentReference?;
    _parts = getStructList(
      snapshotData['parts'],
      PartStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parts_list');

  static Stream<PartsListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartsListRecord.fromSnapshot(s));

  static Future<PartsListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PartsListRecord.fromSnapshot(s));

  static PartsListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PartsListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartsListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartsListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartsListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartsListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartsListRecordData({
  DocumentReference? boatReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'boat_reference': boatReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartsListRecordDocumentEquality implements Equality<PartsListRecord> {
  const PartsListRecordDocumentEquality();

  @override
  bool equals(PartsListRecord? e1, PartsListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.boatReference == e2?.boatReference &&
        listEquality.equals(e1?.parts, e2?.parts);
  }

  @override
  int hash(PartsListRecord? e) =>
      const ListEquality().hash([e?.boatReference, e?.parts]);

  @override
  bool isValidKey(Object? o) => o is PartsListRecord;
}
