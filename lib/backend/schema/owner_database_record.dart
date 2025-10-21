import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// owner subcollection
class OwnerDatabaseRecord extends FirestoreRecord {
  OwnerDatabaseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "marina_address" field.
  String? _marinaAddress;
  String get marinaAddress => _marinaAddress ?? '';
  bool hasMarinaAddress() => _marinaAddress != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _marinaAddress = snapshotData['marina_address'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('owner_database')
          : FirebaseFirestore.instance.collectionGroup('owner_database');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('owner_database').doc(id);

  static Stream<OwnerDatabaseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OwnerDatabaseRecord.fromSnapshot(s));

  static Future<OwnerDatabaseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OwnerDatabaseRecord.fromSnapshot(s));

  static OwnerDatabaseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OwnerDatabaseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OwnerDatabaseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OwnerDatabaseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OwnerDatabaseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OwnerDatabaseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOwnerDatabaseRecordData({
  String? marinaAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'marina_address': marinaAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class OwnerDatabaseRecordDocumentEquality
    implements Equality<OwnerDatabaseRecord> {
  const OwnerDatabaseRecordDocumentEquality();

  @override
  bool equals(OwnerDatabaseRecord? e1, OwnerDatabaseRecord? e2) {
    return e1?.marinaAddress == e2?.marinaAddress;
  }

  @override
  int hash(OwnerDatabaseRecord? e) =>
      const ListEquality().hash([e?.marinaAddress]);

  @override
  bool isValidKey(Object? o) => o is OwnerDatabaseRecord;
}
