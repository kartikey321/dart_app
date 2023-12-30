// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/approvals/approval.dart';
import 'package:dart_app/models/projects/blocks/sales/authority.dart';
import 'package:dart_app/models/projects/blocks/sales/nominee.dart';
import 'package:dart_app/models/projects/blocks/sales/poc.dart';
import 'package:dart_app/models/projects/blocks/sales/sales.dart';

class SaleHistory {
  String unitNo;
  String blockName;
  DateTime soldOn;
  double costing;
  String gst;
  ApprovalFile agreementVal;
  List<ApprovalFile> supplementaryAgreements;
  double loanSanction;
  String sanctionBank;
  List<String> owners;
  Authority soldBy;
  Authority approvedBy;
  String incentiveAllocated;
  Poc pointOfContact;
  List<Map<String, dynamic>> notes;
  String status;
  List<Nominee> nominees;
  UpdateDetails updateDetails;
  SaleHistory({
    required this.unitNo,
    required this.blockName,
    required this.soldOn,
    required this.costing,
    required this.gst,
    required this.agreementVal,
    required this.supplementaryAgreements,
    required this.loanSanction,
    required this.sanctionBank,
    required this.owners,
    required this.soldBy,
    required this.approvedBy,
    required this.incentiveAllocated,
    required this.pointOfContact,
    required this.notes,
    required this.status,
    required this.nominees,
    required this.updateDetails,
  });

  SaleHistory copyWith({
    String? unitNo,
    String? blockName,
    DateTime? soldOn,
    double? costing,
    String? gst,
    ApprovalFile? agreementVal,
    List<ApprovalFile>? supplementaryAgreements,
    double? loanSanction,
    String? sanctionBank,
    List<String>? owners,
    Authority? soldBy,
    Authority? approvedBy,
    String? incentiveAllocated,
    Poc? pointOfContact,
    List<Map<String, dynamic>>? notes,
    String? status,
    List<Nominee>? nominees,
    UpdateDetails? updateDetails,
  }) {
    return SaleHistory(
      unitNo: unitNo ?? this.unitNo,
      blockName: blockName ?? this.blockName,
      soldOn: soldOn ?? this.soldOn,
      costing: costing ?? this.costing,
      gst: gst ?? this.gst,
      agreementVal: agreementVal ?? this.agreementVal,
      supplementaryAgreements:
          supplementaryAgreements ?? this.supplementaryAgreements,
      loanSanction: loanSanction ?? this.loanSanction,
      sanctionBank: sanctionBank ?? this.sanctionBank,
      owners: owners ?? this.owners,
      soldBy: soldBy ?? this.soldBy,
      approvedBy: approvedBy ?? this.approvedBy,
      incentiveAllocated: incentiveAllocated ?? this.incentiveAllocated,
      pointOfContact: pointOfContact ?? this.pointOfContact,
      notes: notes ?? this.notes,
      status: status ?? this.status,
      nominees: nominees ?? this.nominees,
      updateDetails: updateDetails ?? this.updateDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unitNo': unitNo,
      'blockName': blockName,
      'soldOn': soldOn.toIso8601String(),
      'costing': costing,
      'gst': gst,
      'agreementVal': agreementVal.toMap(),
      'supplementaryAgreements':
          supplementaryAgreements.map((x) => x.toMap()).toList(),
      'loanSanction': loanSanction,
      'sanctionBank': sanctionBank,
      'owners': owners,
      'soldBy': soldBy.toMap(),
      'approvedBy': approvedBy.toMap(),
      'incentiveAllocated': incentiveAllocated,
      'pointOfContact': pointOfContact.toMap(),
      'notes': notes,
      'status': status,
      'nominees': nominees.map((x) => x.toMap()).toList(),
      'updateDetails': updateDetails.toMap(),
    };
  }

  factory SaleHistory.fromMap(Map<String, dynamic> map) {
    return SaleHistory(
      unitNo: map['unitNo'] as String,
      blockName: map['blockName'] as String,
      soldOn: DateTime.parse(map['soldOn'] as String),
      costing: map['costing'] as double,
      gst: map['gst'] as String,
      agreementVal:
          ApprovalFile.fromMap(map['agreementVal'] as Map<String, dynamic>),
      supplementaryAgreements: List<ApprovalFile>.from(
        (map['supplementaryAgreements'] as List).map<ApprovalFile>(
          (x) => ApprovalFile.fromMap(x as Map<String, dynamic>),
        ),
      ),
      loanSanction: map['loanSanction'] as double,
      sanctionBank: map['sanctionBank'] as String,
      owners: List<String>.from((map['owners'] as List<String>)),
      soldBy: Authority.fromMap(map['soldBy'] as Map<String, dynamic>),
      approvedBy: Authority.fromMap(map['approvedBy'] as Map<String, dynamic>),
      incentiveAllocated: map['incentiveAllocated'] as String,
      pointOfContact:
          Poc.fromMap(map['pointOfContact'] as Map<String, dynamic>),
      notes: List<Map<String, dynamic>>.from(
        (map['notes'] as List).map<Map<String, dynamic>>(
          (x) => x,
        ),
      ),
      status: map['status'] as String,
      nominees: List<Nominee>.from(
        (map['nominees'] as List).map<Nominee>(
          (x) => Nominee.fromMap(x as Map<String, dynamic>),
        ),
      ),
      updateDetails:
          UpdateDetails.fromMap(map['updateDetails'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SaleHistory.fromJson(String source) =>
      SaleHistory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SaleHistory(unitNo: $unitNo, blockName: $blockName, soldOn: $soldOn, costing: $costing, gst: $gst, agreementVal: $agreementVal, supplementaryAgreements: $supplementaryAgreements, loanSanction: $loanSanction, sanctionBank: $sanctionBank, owners: $owners, soldBy: $soldBy, approvedBy: $approvedBy, incentiveAllocated: $incentiveAllocated, pointOfContact: $pointOfContact, notes: $notes, status: $status, nominees: $nominees, updateDetails: $updateDetails)';
  }

  @override
  bool operator ==(covariant SaleHistory other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.unitNo == unitNo &&
        other.blockName == blockName &&
        other.soldOn == soldOn &&
        other.costing == costing &&
        other.gst == gst &&
        other.agreementVal == agreementVal &&
        listEquals(other.supplementaryAgreements, supplementaryAgreements) &&
        other.loanSanction == loanSanction &&
        other.sanctionBank == sanctionBank &&
        listEquals(other.owners, owners) &&
        other.soldBy == soldBy &&
        other.approvedBy == approvedBy &&
        other.incentiveAllocated == incentiveAllocated &&
        other.pointOfContact == pointOfContact &&
        listEquals(other.notes, notes) &&
        other.status == status &&
        listEquals(other.nominees, nominees) &&
        other.updateDetails == updateDetails;
  }

  @override
  int get hashCode {
    return unitNo.hashCode ^
        blockName.hashCode ^
        soldOn.hashCode ^
        costing.hashCode ^
        gst.hashCode ^
        agreementVal.hashCode ^
        supplementaryAgreements.hashCode ^
        loanSanction.hashCode ^
        sanctionBank.hashCode ^
        owners.hashCode ^
        soldBy.hashCode ^
        approvedBy.hashCode ^
        incentiveAllocated.hashCode ^
        pointOfContact.hashCode ^
        notes.hashCode ^
        status.hashCode ^
        nominees.hashCode ^
        updateDetails.hashCode;
  }
}

class UpdateDetails {
  String reason;
  Authority updatedBy;
  Authority approvedBy;
  DateTime updatedOn;
  UpdateDetails({
    required this.reason,
    required this.updatedBy,
    required this.approvedBy,
    required this.updatedOn,
  });

  UpdateDetails copyWith({
    String? reason,
    Authority? updatedBy,
    Authority? approvedBy,
    DateTime? updatedOn,
  }) {
    return UpdateDetails(
      reason: reason ?? this.reason,
      updatedBy: updatedBy ?? this.updatedBy,
      approvedBy: approvedBy ?? this.approvedBy,
      updatedOn: updatedOn ?? this.updatedOn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'updatedBy': updatedBy.toMap(),
      'approvedBy': approvedBy.toMap(),
      'updatedOn': updatedOn.toIso8601String(),
    };
  }

  factory UpdateDetails.fromMap(Map<String, dynamic> map) {
    return UpdateDetails(
      reason: map['reason'] as String,
      updatedBy: Authority.fromMap(map['updatedBy'] as Map<String, dynamic>),
      approvedBy: Authority.fromMap(map['approvedBy'] as Map<String, dynamic>),
      updatedOn: DateTime.parse(map['updatedOn'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdateDetails.fromJson(String source) =>
      UpdateDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UpdateDetails(reason: $reason, updatedBy: $updatedBy, approvedBy: $approvedBy, updatedOn: $updatedOn)';
  }

  @override
  bool operator ==(covariant UpdateDetails other) {
    if (identical(this, other)) return true;

    return other.reason == reason &&
        other.updatedBy == updatedBy &&
        other.approvedBy == approvedBy &&
        other.updatedOn == updatedOn;
  }

  @override
  int get hashCode {
    return reason.hashCode ^
        updatedBy.hashCode ^
        approvedBy.hashCode ^
        updatedOn.hashCode;
  }
}
