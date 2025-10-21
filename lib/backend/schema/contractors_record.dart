import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// contractors subcollection
class ContractorsRecord extends FirestoreRecord {
  ContractorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "insurance_company" field.
  String? _insuranceCompany;
  String get insuranceCompany => _insuranceCompany ?? '';
  bool hasInsuranceCompany() => _insuranceCompany != null;

  // "insurance_policy_num" field.
  String? _insurancePolicyNum;
  String get insurancePolicyNum => _insurancePolicyNum ?? '';
  bool hasInsurancePolicyNum() => _insurancePolicyNum != null;

  // "years_experience" field.
  int? _yearsExperience;
  int get yearsExperience => _yearsExperience ?? 0;
  bool hasYearsExperience() => _yearsExperience != null;

  // "license_number" field.
  String? _licenseNumber;
  String get licenseNumber => _licenseNumber ?? '';
  bool hasLicenseNumber() => _licenseNumber != null;

  // "service_area" field.
  String? _serviceArea;
  String get serviceArea => _serviceArea ?? '';
  bool hasServiceArea() => _serviceArea != null;

  // "availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  bool hasAvailability() => _availability != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _insuranceCompany = snapshotData['insurance_company'] as String?;
    _insurancePolicyNum = snapshotData['insurance_policy_num'] as String?;
    _yearsExperience = castToType<int>(snapshotData['years_experience']);
    _licenseNumber = snapshotData['license_number'] as String?;
    _serviceArea = snapshotData['service_area'] as String?;
    _availability = snapshotData['availability'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contractors')
          : FirebaseFirestore.instance.collectionGroup('contractors');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('contractors').doc(id);

  static Stream<ContractorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContractorsRecord.fromSnapshot(s));

  static Future<ContractorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContractorsRecord.fromSnapshot(s));

  static ContractorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContractorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContractorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContractorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContractorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContractorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContractorsRecordData({
  String? insuranceCompany,
  String? insurancePolicyNum,
  int? yearsExperience,
  String? licenseNumber,
  String? serviceArea,
  String? availability,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'insurance_company': insuranceCompany,
      'insurance_policy_num': insurancePolicyNum,
      'years_experience': yearsExperience,
      'license_number': licenseNumber,
      'service_area': serviceArea,
      'availability': availability,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContractorsRecordDocumentEquality implements Equality<ContractorsRecord> {
  const ContractorsRecordDocumentEquality();

  @override
  bool equals(ContractorsRecord? e1, ContractorsRecord? e2) {
    return e1?.insuranceCompany == e2?.insuranceCompany &&
        e1?.insurancePolicyNum == e2?.insurancePolicyNum &&
        e1?.yearsExperience == e2?.yearsExperience &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.serviceArea == e2?.serviceArea &&
        e1?.availability == e2?.availability;
  }

  @override
  int hash(ContractorsRecord? e) => const ListEquality().hash([
        e?.insuranceCompany,
        e?.insurancePolicyNum,
        e?.yearsExperience,
        e?.licenseNumber,
        e?.serviceArea,
        e?.availability
      ]);

  @override
  bool isValidKey(Object? o) => o is ContractorsRecord;
}
