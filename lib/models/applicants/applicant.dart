// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/applicants/contact.dart';
import 'package:dart_app/models/projects/approvals/approval.dart';

class PrefixTypes {
  static String MR = 'Mr.';
  static String MRS = 'Mrs.';
  static String DR = 'Dr.';
  static String MS = 'MS.';
  static String M_S = 'M/s';
}

class RelativeType {
  static String DAUGHTER_OF = 'Daughter of';
  static String SON_OF = 'Son of';
  static String WIFE_OF = 'Wife of';
}

class PreferredAddress {
  static String RESIDENCE = 'RESIDENCE';
  static String OFFICE = 'OFFICE';
}

class Applicant {
  String prefixType;
  String name;
  String relativeType;
  String relativeName;
  DateTime dateOfBirth;
  String aadharNo;
  String panNo;
  String residentialAddress;
  String profession;
  String officeName;
  String officeAddress;
  Contact contact;
  String preferredCorrespondenceAddress;
  List<ApprovalFile> documents;
  Applicant({
    required this.prefixType,
    required this.name,
    required this.relativeType,
    required this.relativeName,
    required this.dateOfBirth,
    required this.aadharNo,
    required this.panNo,
    required this.residentialAddress,
    required this.profession,
    required this.officeName,
    required this.officeAddress,
    required this.contact,
    required this.preferredCorrespondenceAddress,
    required this.documents,
  });

  Applicant copyWith({
    String? prefixType,
    String? name,
    String? relativeType,
    String? relativeName,
    DateTime? dateOfBirth,
    String? aadharNo,
    String? panNo,
    String? residentialAddress,
    String? profession,
    String? officeName,
    String? officeAddress,
    Contact? contact,
    String? preferredCorrespondenceAddress,
    List<ApprovalFile>? documents,
  }) {
    return Applicant(
      prefixType: prefixType ?? this.prefixType,
      name: name ?? this.name,
      relativeType: relativeType ?? this.relativeType,
      relativeName: relativeName ?? this.relativeName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      aadharNo: aadharNo ?? this.aadharNo,
      panNo: panNo ?? this.panNo,
      residentialAddress: residentialAddress ?? this.residentialAddress,
      profession: profession ?? this.profession,
      officeName: officeName ?? this.officeName,
      officeAddress: officeAddress ?? this.officeAddress,
      contact: contact ?? this.contact,
      preferredCorrespondenceAddress:
          preferredCorrespondenceAddress ?? this.preferredCorrespondenceAddress,
      documents: documents ?? this.documents,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixType': prefixType,
      'name': name,
      'relativeType': relativeType,
      'relativeName': relativeName,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'aadharNo': aadharNo,
      'panNo': panNo,
      'residentialAddress': residentialAddress,
      'profession': profession,
      'officeName': officeName,
      'officeAddress': officeAddress,
      'contact': contact.toMap(),
      'preferredCorrespondenceAddress': preferredCorrespondenceAddress,
      'documents': documents.map((x) => x.toMap()).toList(),
    };
  }

  factory Applicant.fromMap(Map<String, dynamic> map) {
    return Applicant(
      prefixType: map['prefixType'] as String,
      name: map['name'] as String,
      relativeType: map['relativeType'] as String,
      relativeName: map['relativeName'] as String,
      dateOfBirth: DateTime.parse(map['dateOfBirth'] as String),
      aadharNo: map['aadharNo'] as String,
      panNo: map['panNo'] as String,
      residentialAddress: map['residentialAddress'] as String,
      profession: map['profession'] as String,
      officeName: map['officeName'] as String,
      officeAddress: map['officeAddress'] as String,
      contact: Contact.fromMap(map['contact'] as Map<String, dynamic>),
      preferredCorrespondenceAddress:
          map['preferredCorrespondenceAddress'] as String,
      documents: List<ApprovalFile>.from(
        (map['documents'] as List<int>).map<ApprovalFile>(
          (x) => ApprovalFile.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Applicant.fromJson(String source) =>
      Applicant.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Applicant(prefixType: $prefixType, name: $name, relativeType: $relativeType, relativeName: $relativeName, dateOfBirth: $dateOfBirth, aadharNo: $aadharNo, panNo: $panNo, residentialAddress: $residentialAddress, profession: $profession, officeName: $officeName, officeAddress: $officeAddress, contact: $contact, preferredCorrespondenceAddress: $preferredCorrespondenceAddress, documents: $documents)';
  }

  @override
  bool operator ==(covariant Applicant other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.prefixType == prefixType &&
        other.name == name &&
        other.relativeType == relativeType &&
        other.relativeName == relativeName &&
        other.dateOfBirth == dateOfBirth &&
        other.aadharNo == aadharNo &&
        other.panNo == panNo &&
        other.residentialAddress == residentialAddress &&
        other.profession == profession &&
        other.officeName == officeName &&
        other.officeAddress == officeAddress &&
        other.contact == contact &&
        other.preferredCorrespondenceAddress ==
            preferredCorrespondenceAddress &&
        listEquals(other.documents, documents);
  }

  @override
  int get hashCode {
    return prefixType.hashCode ^
        name.hashCode ^
        relativeType.hashCode ^
        relativeName.hashCode ^
        dateOfBirth.hashCode ^
        aadharNo.hashCode ^
        panNo.hashCode ^
        residentialAddress.hashCode ^
        profession.hashCode ^
        officeName.hashCode ^
        officeAddress.hashCode ^
        contact.hashCode ^
        preferredCorrespondenceAddress.hashCode ^
        documents.hashCode;
  }
}
