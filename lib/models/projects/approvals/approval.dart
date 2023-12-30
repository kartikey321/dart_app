// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class ApprovalFile {
  String name;
  String no;
  Map<String, dynamic> otherDetails;
  String docLink;
  ApprovalFile({
    required this.name,
    required this.no,
    required this.otherDetails,
    required this.docLink,
  });

  ApprovalFile copyWith({
    String? name,
    String? no,
    Map<String, dynamic>? otherDetails,
    String? docLink,
  }) {
    return ApprovalFile(
      name: name ?? this.name,
      no: no ?? this.no,
      otherDetails: otherDetails ?? this.otherDetails,
      docLink: docLink ?? this.docLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'no': no,
      'otherDetails': otherDetails,
      'docLink': docLink,
    };
  }

  factory ApprovalFile.fromMap(Map<String, dynamic> map) {
    return ApprovalFile(
      name: map['name'] as String,
      no: map['no'] as String,
      otherDetails: Map<String, dynamic>.from(
          (map['otherDetails'] as Map<String, dynamic>)),
      docLink: map['docLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApprovalFile.fromJson(String source) =>
      ApprovalFile.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApprovalFile(name: $name, no: $no, otherDetails: $otherDetails, docLink: $docLink)';
  }

  @override
  bool operator ==(covariant ApprovalFile other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other.name == name &&
        other.no == no &&
        mapEquals(other.otherDetails, otherDetails) &&
        other.docLink == docLink;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        no.hashCode ^
        otherDetails.hashCode ^
        docLink.hashCode;
  }
}
