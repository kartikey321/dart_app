// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dart_app/models/projects/approvals/approval.dart';
import 'package:firedart/generated/google/type/latlng.pb.dart';

import 'package:dart_app/models/projects/blocks/blocks.dart';

class Project {
  String name;
  LatLng location;
  String address;
  List<Blocks> blocks;
  List<ApprovalFile> approvalFiles;
  Project(
      {required this.name,
      required this.location,
      required this.address,
      required this.blocks,
      required this.approvalFiles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'location': {
        'latitude': location.latitude,
        'longitude': location.longitude
      },
      'address': address,
      'blocks': blocks.map((x) => x.toMap()).toList(),
      'approvalFiles': approvalFiles.map((x) => x.toMap()).toList()
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      name: map['name'] as String,
      location: LatLng(
          latitude: map['location']['latitude'] as double,
          longitude: map['location']['longitude']),
      address: map['address'] as String,
      approvalFiles: List<ApprovalFile>.from(
        (map['approvalFiles'] as List).map<ApprovalFile>(
          (x) => ApprovalFile.fromMap(x as Map<String, dynamic>),
        ),
      ),
      blocks: List<Blocks>.from(
        (map['blocks'] as List).map<Blocks>(
          (x) => Blocks.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Project(name: $name, location: $location, address: $address, blocks: $blocks)';
  }

  @override
  bool operator ==(covariant Project other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.name == name &&
        other.location == location &&
        other.address == address &&
        listEquals(other.blocks, blocks);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        location.hashCode ^
        address.hashCode ^
        blocks.hashCode;
  }
}
