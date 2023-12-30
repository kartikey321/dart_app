// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/unit/unit_area.dart';

class Category {
  String unitCategory;
  UnitArea unitArea;
  Category({
    required this.unitCategory,
    required this.unitArea,
  });

  Category copyWith({
    String? unitCategory,
    UnitArea? unitArea,
  }) {
    return Category(
      unitCategory: unitCategory ?? this.unitCategory,
      unitArea: unitArea ?? this.unitArea,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unitCategory': unitCategory,
      'unitArea': unitArea.toMap(),
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      unitCategory: map['unitCategory'] as String,
      unitArea: UnitArea.fromMap(map['unitArea'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Category(unitCategory: $unitCategory, unitArea: $unitArea)';

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.unitCategory == unitCategory && other.unitArea == unitArea;
  }

  @override
  int get hashCode => unitCategory.hashCode ^ unitArea.hashCode;
}
