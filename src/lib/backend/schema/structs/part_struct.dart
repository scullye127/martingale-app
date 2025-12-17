// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Stores data about a part
class PartStruct extends FFFirebaseStruct {
  PartStruct({
    /// The name of the part (engine, sail, etc.)
    String? name,

    /// The brand that made the part
    String? partMake,

    /// The specific model of part
    String? partModel,

    /// Link to the owners manual for the part (if applicable)
    String? partManual,

    /// Additional Details about the part, if applicable
    String? details,
    String? category,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _partMake = partMake,
        _partModel = partModel,
        _partManual = partManual,
        _details = details,
        _category = category,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "part_make" field.
  String? _partMake;
  String get partMake => _partMake ?? '';
  set partMake(String? val) => _partMake = val;

  bool hasPartMake() => _partMake != null;

  // "part_model" field.
  String? _partModel;
  String get partModel => _partModel ?? '';
  set partModel(String? val) => _partModel = val;

  bool hasPartModel() => _partModel != null;

  // "part_manual" field.
  String? _partManual;
  String get partManual => _partManual ?? '';
  set partManual(String? val) => _partManual = val;

  bool hasPartManual() => _partManual != null;

  // "Details" field.
  String? _details;
  String get details => _details ?? '';
  set details(String? val) => _details = val;

  bool hasDetails() => _details != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  static PartStruct fromMap(Map<String, dynamic> data) => PartStruct(
        name: data['name'] as String?,
        partMake: data['part_make'] as String?,
        partModel: data['part_model'] as String?,
        partManual: data['part_manual'] as String?,
        details: data['Details'] as String?,
        category: data['category'] as String?,
      );

  static PartStruct? maybeFromMap(dynamic data) =>
      data is Map ? PartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'part_make': _partMake,
        'part_model': _partModel,
        'part_manual': _partManual,
        'Details': _details,
        'category': _category,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'part_make': serializeParam(
          _partMake,
          ParamType.String,
        ),
        'part_model': serializeParam(
          _partModel,
          ParamType.String,
        ),
        'part_manual': serializeParam(
          _partManual,
          ParamType.String,
        ),
        'Details': serializeParam(
          _details,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
      }.withoutNulls;

  static PartStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        partMake: deserializeParam(
          data['part_make'],
          ParamType.String,
          false,
        ),
        partModel: deserializeParam(
          data['part_model'],
          ParamType.String,
          false,
        ),
        partManual: deserializeParam(
          data['part_manual'],
          ParamType.String,
          false,
        ),
        details: deserializeParam(
          data['Details'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PartStruct &&
        name == other.name &&
        partMake == other.partMake &&
        partModel == other.partModel &&
        partManual == other.partManual &&
        details == other.details &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, partMake, partModel, partManual, details, category]);
}

PartStruct createPartStruct({
  String? name,
  String? partMake,
  String? partModel,
  String? partManual,
  String? details,
  String? category,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PartStruct(
      name: name,
      partMake: partMake,
      partModel: partModel,
      partManual: partManual,
      details: details,
      category: category,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PartStruct? updatePartStruct(
  PartStruct? part, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    part
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPartStructData(
  Map<String, dynamic> firestoreData,
  PartStruct? part,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (part == null) {
    return;
  }
  if (part.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && part.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final partData = getPartFirestoreData(part, forFieldValue);
  final nestedData = partData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = part.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPartFirestoreData(
  PartStruct? part, [
  bool forFieldValue = false,
]) {
  if (part == null) {
    return {};
  }
  final firestoreData = mapToFirestore(part.toMap());

  // Add any Firestore field values
  part.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPartListFirestoreData(
  List<PartStruct>? parts,
) =>
    parts?.map((e) => getPartFirestoreData(e, true)).toList() ?? [];
