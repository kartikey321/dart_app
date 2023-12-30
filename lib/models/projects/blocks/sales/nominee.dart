// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Nominee {
  String name;
  String applicantId;
  String relation_with_applicant;
  Nominee({
    required this.name,
    required this.applicantId,
    required this.relation_with_applicant,
  });

  Nominee copyWith({
    String? name,
    String? applicantId,
    String? relation_with_applicant,
  }) {
    return Nominee(
      name: name ?? this.name,
      applicantId: applicantId ?? this.applicantId,
      relation_with_applicant:
          relation_with_applicant ?? this.relation_with_applicant,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'applicantId': applicantId,
      'relation_with_applicant': relation_with_applicant,
    };
  }

  factory Nominee.fromMap(Map<String, dynamic> map) {
    return Nominee(
      name: map['name'] as String,
      applicantId: map['applicantId'] as String,
      relation_with_applicant: map['relation_with_applicant'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Nominee.fromJson(String source) =>
      Nominee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Nominee(name: $name, applicantId: $applicantId, relation_with_applicant: $relation_with_applicant)';

  @override
  bool operator ==(covariant Nominee other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.applicantId == applicantId &&
        other.relation_with_applicant == relation_with_applicant;
  }

  @override
  int get hashCode =>
      name.hashCode ^ applicantId.hashCode ^ relation_with_applicant.hashCode;
}
