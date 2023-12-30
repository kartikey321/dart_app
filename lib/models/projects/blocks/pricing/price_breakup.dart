// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/blocks/pricing/pricing.dart';

class PriceBreakup {
  String unitCategory;
  DateTime updatedOn;
  PricingField basic_payment_BSP;
  List<PricingField> plc;
  List<PricingField> additional;
  PricingField? parking;
  List<PricingField> addons;
  PriceBreakup({
    required this.unitCategory,
    required this.updatedOn,
    required this.basic_payment_BSP,
    required this.plc,
    required this.additional,
    this.parking,
    required this.addons,
  });

  PriceBreakup copyWith({
    String? unitCategory,
    DateTime? updatedOn,
    PricingField? basic_payment_BSP,
    List<PricingField>? plc,
    List<PricingField>? additional,
    PricingField? parking,
    List<PricingField>? addons,
  }) {
    return PriceBreakup(
      unitCategory: unitCategory ?? this.unitCategory,
      updatedOn: updatedOn ?? this.updatedOn,
      basic_payment_BSP: basic_payment_BSP ?? this.basic_payment_BSP,
      plc: plc ?? this.plc,
      additional: additional ?? this.additional,
      parking: parking ?? this.parking,
      addons: addons ?? this.addons,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unitCategory': unitCategory,
      'updatedOn': updatedOn.toIso8601String(),
      'basic_payment_BSP': basic_payment_BSP.toMap(),
      'plc': plc.map((x) => x.toMap()).toList(),
      'additional': additional.map((x) => x.toMap()).toList(),
      'parking': parking?.toMap(),
      'addons': addons.map((x) => x.toMap()).toList(),
    };
  }

  factory PriceBreakup.fromMap(Map<String, dynamic> map) {
    return PriceBreakup(
      unitCategory: map['unitCategory'] as String,
      updatedOn: DateTime.parse(map['updatedOn'] as String),
      basic_payment_BSP: PricingField.fromMap(
          map['basic_payment_BSP'] as Map<String, dynamic>),
      plc: List<PricingField>.from(
        (map['plc'] as List).map<PricingField>(
          (x) => PricingField.fromMap(x as Map<String, dynamic>),
        ),
      ),
      additional: List<PricingField>.from(
        (map['additional'] as List).map<PricingField>(
          (x) => PricingField.fromMap(x as Map<String, dynamic>),
        ),
      ),
      parking: map['parking'] != null
          ? PricingField.fromMap(map['parking'] as Map<String, dynamic>)
          : null,
      addons: List<PricingField>.from(
        (map['addons'] as List).map<PricingField>(
          (x) => PricingField.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PriceBreakup.fromJson(String source) =>
      PriceBreakup.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PriceBreakup(unitCategory: $unitCategory, updatedOn: $updatedOn, basic_payment_BSP: $basic_payment_BSP, plc: $plc, additional: $additional, parking: $parking, addons: $addons)';
  }

  @override
  bool operator ==(covariant PriceBreakup other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.unitCategory == unitCategory &&
        other.updatedOn == updatedOn &&
        other.basic_payment_BSP == basic_payment_BSP &&
        listEquals(other.plc, plc) &&
        listEquals(other.additional, additional) &&
        other.parking == parking &&
        listEquals(other.addons, addons);
  }

  @override
  int get hashCode {
    return unitCategory.hashCode ^
        updatedOn.hashCode ^
        basic_payment_BSP.hashCode ^
        plc.hashCode ^
        additional.hashCode ^
        parking.hashCode ^
        addons.hashCode;
  }
}
