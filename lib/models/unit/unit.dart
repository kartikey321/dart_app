// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/blocks/pricing/pricing.dart';
import 'package:dart_app/models/unit/pls_road.dart';
import 'package:dart_app/models/unit/road_size.dart';
import 'package:dart_app/models/unit/std_size.dart';
import 'package:dart_app/models/unit/unit_area.dart';
import 'package:dart_app/models/unit/unit_dimension.dart';
import 'package:dart_app/models/unit/unit_direction.dart';

class Unit {
  String unitNo;
  String unitType;
  UnitArea unitArea;
  UnitDimension unitDimension;
  RoadSize roadSize;
  UnitDirection unitDirection;
  Map<String, bool> plc;
  String unitCategory;
  List<Map> notes;
  List<String> parkings;
  int? floorNo;
  String unitAvailability;
  Unit({
    required this.unitCategory,
    required this.unitDirection,
    required this.unitDimension,
    required this.unitNo,
    required this.unitType,
    required this.unitArea,
    required this.roadSize,
    required this.plc,
    required this.notes,
    required this.parkings,
    this.floorNo,
    required this.unitAvailability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unitNo': unitNo,
      'unitType': unitType,
      'unitArea': unitArea.toMap(),
      'unitCategory': unitCategory,
      'unitDimension': unitDimension.toMap(),
      'unitDirection': unitDirection.toMap(),
      'roadSize': roadSize.toMap(),
      'plc': plc,
      'notes': notes,
      'parkings': parkings,
      'floorNo': floorNo,
      'unitAvailability': unitAvailability,
    };
  }

  factory Unit.fromMap(Map<String, dynamic> map) {
    return Unit(
      unitCategory: map['unitCategory'] as String,
      unitDimension: UnitDimension.fromMap(map['unitDimension']),
      unitDirection: UnitDirection.fromMap(map['unitDirection']),
      unitNo: map['unitNo'] as String,
      unitType: map['unitType'] as String,
      unitArea: UnitArea.fromMap((map['unitArea'])),
      roadSize: RoadSize.fromMap(map['roadSize'] as Map<String, dynamic>),
      plc: Map<String, bool>.from((map['plc'] as Map<String, bool>)),
      notes: List<Map>.from(
        (map['notes'] as List).map<Map>(
          (x) => x,
        ),
      ),
      parkings: List<String>.from(
        (map['parkings'] as List<String>),
      ),
      floorNo: map['floorNo'] != null ? map['floorNo'] as int : null,
      unitAvailability: map['unitAvailability'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Unit.fromJson(String source) =>
      Unit.fromMap(json.decode(source) as Map<String, dynamic>);
}
