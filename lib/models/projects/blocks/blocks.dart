// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/blocks/categories.dart';
import 'package:dart_app/models/projects/blocks/plc.dart';
import 'package:dart_app/models/unit/unit.dart';

class Blocks {
  String name;
  DateTime created;
  List<String> types;
  List<String> stages;
  List<String> tags;
  List<Category> categories;
  Map<String, bool> plc;
  List<Unit> units;
  Blocks({
    required this.name,
    required this.created,
    required this.types,
    required this.stages,
    required this.tags,
    required this.categories,
    required this.plc,
    required this.units,
  });

  Blocks copyWith({
    String? name,
    DateTime? created,
    List<String>? types,
    List<String>? stages,
    List<String>? tags,
    List<Category>? categories,
    Map<String, bool>? plc,
    List<Unit>? units,
  }) {
    return Blocks(
      name: name ?? this.name,
      created: created ?? this.created,
      types: types ?? this.types,
      stages: stages ?? this.stages,
      tags: tags ?? this.tags,
      categories: categories ?? this.categories,
      plc: plc ?? this.plc,
      units: units ?? this.units,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'created': created.toIso8601String(),
      'types': types,
      'stages': stages,
      'tags': tags,
      'categories': categories.map((x) => x.toMap()).toList(),
      'plc': plc,
      'units': units.map((x) => x.toMap()).toList(),
    };
  }

  factory Blocks.fromMap(Map<String, dynamic> map) {
    return Blocks(
      name: map['name'] as String,
      created: DateTime.parse(map['created'] as String),
      types: List<String>.from(
        (map['types'] as List<String>),
      ),
      stages: List<String>.from(
        (map['stages'] as List<String>),
      ),
      tags: List<String>.from(
        (map['tags'] as List<String>),
      ),
      categories: List<Category>.from(
        (map['categories'] as List).map<Category>(
          (x) => Category.fromMap(x as Map<String, dynamic>),
        ),
      ),
      plc: Map<String, bool>.from(
        (map['plc'] as Map<String, bool>),
      ),
      units: List<Unit>.from(
        (map['units'] as List).map<Unit>(
          (x) => Unit.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Blocks.fromJson(String source) =>
      Blocks.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Blocks(name: $name, created: $created, types: $types, stages: $stages, tags: $tags, categories: $categories, plc: $plc, units: $units)';
  }

  @override
  bool operator ==(covariant Blocks other) {
    if (identical(this, other)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return other.name == name &&
        other.created == created &&
        collectionEquals(other.types, types) &&
        collectionEquals(other.stages, stages) &&
        collectionEquals(other.tags, tags) &&
        collectionEquals(other.categories, categories) &&
        collectionEquals(other.plc, plc) &&
        collectionEquals(other.units, units);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        created.hashCode ^
        types.hashCode ^
        stages.hashCode ^
        tags.hashCode ^
        categories.hashCode ^
        plc.hashCode ^
        units.hashCode;
  }
}
