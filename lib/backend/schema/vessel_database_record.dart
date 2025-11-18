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

  // "hull_id" field.
  String? _hullId;
  String get hullId => _hullId ?? '';
  bool hasHullId() => _hullId != null;

  // "owner_name" field.
  String? _ownerName;
  String get ownerName => _ownerName ?? '';
  bool hasOwnerName() => _ownerName != null;

  // "engine_make" field.
  String? _engineMake;
  String get engineMake => _engineMake ?? '';
  bool hasEngineMake() => _engineMake != null;

  // "engine_model" field.
  String? _engineModel;
  String get engineModel => _engineModel ?? '';
  bool hasEngineModel() => _engineModel != null;

  // "mfd1_make" field.
  String? _mfd1Make;
  String get mfd1Make => _mfd1Make ?? '';
  bool hasMfd1Make() => _mfd1Make != null;

  // "mfd1_model" field.
  String? _mfd1Model;
  String get mfd1Model => _mfd1Model ?? '';
  bool hasMfd1Model() => _mfd1Model != null;

  // "gpsAntenna_make" field.
  String? _gpsAntennaMake;
  String get gpsAntennaMake => _gpsAntennaMake ?? '';
  bool hasGpsAntennaMake() => _gpsAntennaMake != null;

  // "gpsAntenna_model" field.
  String? _gpsAntennaModel;
  String get gpsAntennaModel => _gpsAntennaModel ?? '';
  bool hasGpsAntennaModel() => _gpsAntennaModel != null;

  // "internetLink_make" field.
  String? _internetLinkMake;
  String get internetLinkMake => _internetLinkMake ?? '';
  bool hasInternetLinkMake() => _internetLinkMake != null;

  // "internetLink_model" field.
  String? _internetLinkModel;
  String get internetLinkModel => _internetLinkModel ?? '';
  bool hasInternetLinkModel() => _internetLinkModel != null;

  // "house_bank" field.
  String? _houseBank;
  String get houseBank => _houseBank ?? '';
  bool hasHouseBank() => _houseBank != null;

  // "inverter" field.
  String? _inverter;
  String get inverter => _inverter ?? '';
  bool hasInverter() => _inverter != null;

  // "batteryMonitor_make" field.
  String? _batteryMonitorMake;
  String get batteryMonitorMake => _batteryMonitorMake ?? '';
  bool hasBatteryMonitorMake() => _batteryMonitorMake != null;

  // "batteryMonitor_model" field.
  String? _batteryMonitorModel;
  String get batteryMonitorModel => _batteryMonitorModel ?? '';
  bool hasBatteryMonitorModel() => _batteryMonitorModel != null;

  void _initializeFields() {
    _vesselName = snapshotData['vessel_name'] as String?;
    _hullId = snapshotData['hull_id'] as String?;
    _ownerName = snapshotData['owner_name'] as String?;
    _engineMake = snapshotData['engine_make'] as String?;
    _engineModel = snapshotData['engine_model'] as String?;
    _mfd1Make = snapshotData['mfd1_make'] as String?;
    _mfd1Model = snapshotData['mfd1_model'] as String?;
    _gpsAntennaMake = snapshotData['gpsAntenna_make'] as String?;
    _gpsAntennaModel = snapshotData['gpsAntenna_model'] as String?;
    _internetLinkMake = snapshotData['internetLink_make'] as String?;
    _internetLinkModel = snapshotData['internetLink_model'] as String?;
    _houseBank = snapshotData['house_bank'] as String?;
    _inverter = snapshotData['inverter'] as String?;
    _batteryMonitorMake = snapshotData['batteryMonitor_make'] as String?;
    _batteryMonitorModel = snapshotData['batteryMonitor_model'] as String?;
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
  String? hullId,
  String? ownerName,
  String? engineMake,
  String? engineModel,
  String? mfd1Make,
  String? mfd1Model,
  String? gpsAntennaMake,
  String? gpsAntennaModel,
  String? internetLinkMake,
  String? internetLinkModel,
  String? houseBank,
  String? inverter,
  String? batteryMonitorMake,
  String? batteryMonitorModel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vessel_name': vesselName,
      'hull_id': hullId,
      'owner_name': ownerName,
      'engine_make': engineMake,
      'engine_model': engineModel,
      'mfd1_make': mfd1Make,
      'mfd1_model': mfd1Model,
      'gpsAntenna_make': gpsAntennaMake,
      'gpsAntenna_model': gpsAntennaModel,
      'internetLink_make': internetLinkMake,
      'internetLink_model': internetLinkModel,
      'house_bank': houseBank,
      'inverter': inverter,
      'batteryMonitor_make': batteryMonitorMake,
      'batteryMonitor_model': batteryMonitorModel,
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
        e1?.hullId == e2?.hullId &&
        e1?.ownerName == e2?.ownerName &&
        e1?.engineMake == e2?.engineMake &&
        e1?.engineModel == e2?.engineModel &&
        e1?.mfd1Make == e2?.mfd1Make &&
        e1?.mfd1Model == e2?.mfd1Model &&
        e1?.gpsAntennaMake == e2?.gpsAntennaMake &&
        e1?.gpsAntennaModel == e2?.gpsAntennaModel &&
        e1?.internetLinkMake == e2?.internetLinkMake &&
        e1?.internetLinkModel == e2?.internetLinkModel &&
        e1?.houseBank == e2?.houseBank &&
        e1?.inverter == e2?.inverter &&
        e1?.batteryMonitorMake == e2?.batteryMonitorMake &&
        e1?.batteryMonitorModel == e2?.batteryMonitorModel;
  }

  @override
  int hash(VesselDatabaseRecord? e) => const ListEquality().hash([
        e?.vesselName,
        e?.hullId,
        e?.ownerName,
        e?.engineMake,
        e?.engineModel,
        e?.mfd1Make,
        e?.mfd1Model,
        e?.gpsAntennaMake,
        e?.gpsAntennaModel,
        e?.internetLinkMake,
        e?.internetLinkModel,
        e?.houseBank,
        e?.inverter,
        e?.batteryMonitorMake,
        e?.batteryMonitorModel
      ]);

  @override
  bool isValidKey(Object? o) => o is VesselDatabaseRecord;
}
