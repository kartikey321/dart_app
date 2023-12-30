// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Poc {
  String name;
  String relationToApplicant;
  String primaryEmail;
  String secondaryEmail;
  int phoneNo;
  Poc({
    required this.name,
    required this.relationToApplicant,
    required this.primaryEmail,
    required this.secondaryEmail,
    required this.phoneNo,
  });

  Poc copyWith({
    String? name,
    String? relationToApplicant,
    String? primaryEmail,
    String? secondaryEmail,
    int? phoneNo,
  }) {
    return Poc(
      name: name ?? this.name,
      relationToApplicant: relationToApplicant ?? this.relationToApplicant,
      primaryEmail: primaryEmail ?? this.primaryEmail,
      secondaryEmail: secondaryEmail ?? this.secondaryEmail,
      phoneNo: phoneNo ?? this.phoneNo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'relationToApplicant': relationToApplicant,
      'primaryEmail': primaryEmail,
      'secondaryEmail': secondaryEmail,
      'phoneNo': phoneNo,
    };
  }

  factory Poc.fromMap(Map<String, dynamic> map) {
    return Poc(
      name: map['name'] as String,
      relationToApplicant: map['relationToApplicant'] as String,
      primaryEmail: map['primaryEmail'] as String,
      secondaryEmail: map['secondaryEmail'] as String,
      phoneNo: map['phoneNo'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Poc.fromJson(String source) =>
      Poc.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Poc(name: $name, relationToApplicant: $relationToApplicant, primaryEmail: $primaryEmail, secondaryEmail: $secondaryEmail, phoneNo: $phoneNo)';
  }

  @override
  bool operator ==(covariant Poc other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.relationToApplicant == relationToApplicant &&
        other.primaryEmail == primaryEmail &&
        other.secondaryEmail == secondaryEmail &&
        other.phoneNo == phoneNo;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        relationToApplicant.hashCode ^
        primaryEmail.hashCode ^
        secondaryEmail.hashCode ^
        phoneNo.hashCode;
  }
}
