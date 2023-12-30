// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/approvals/approval.dart';
import 'package:dart_app/models/projects/blocks/sales/authority.dart';
import 'package:dart_app/models/projects/blocks/sales/nominee.dart';
import 'package:dart_app/models/projects/blocks/sales/poc.dart';
import 'package:dart_app/models/projects/blocks/sales/sale_history.dart';

class SaleStatus {
  static String LIVE = 'LIVE';
  static String CANCELLED = 'CANCELLED';
  static String TRANSFERRED = 'TRANSFERRED';
}

class GstType {
  static String AS_APPLICABLE = 'AS_APPLICABLE';
  static String INCLUDED = 'INCLUDED';
}

class Sales {
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
  List<SaleHistory>? history;
  Sales({
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
    this.history,
  });

  Sales copyWith({
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
    List<SaleHistory>? history,
  }) {
    return Sales(
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
      history: history ?? this.history,
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
      'history': history?.map((x) => x.toMap()).toList(),
    };
  }

  factory Sales.fromMap(Map<String, dynamic> map) {
    return Sales(
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
          (x) => x!,
        ),
      ),
      status: map['status'] as String,
      nominees: List<Nominee>.from(
        (map['nominees'] as List).map<Nominee>(
          (x) => Nominee.fromMap(x as Map<String, dynamic>),
        ),
      ),
      history: map['history'] != null
          ? List<SaleHistory>.from(
              (map['history'] as List).map<SaleHistory?>(
                (x) => SaleHistory.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sales.fromJson(String source) =>
      Sales.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Sales(unitNo: $unitNo, blockName: $blockName, soldOn: $soldOn, costing: $costing, gst: $gst, agreementVal: $agreementVal, supplementaryAgreements: $supplementaryAgreements, loanSanction: $loanSanction, sanctionBank: $sanctionBank, owners: $owners, soldBy: $soldBy, approvedBy: $approvedBy, incentiveAllocated: $incentiveAllocated, pointOfContact: $pointOfContact, notes: $notes, status: $status, nominees: $nominees, history: $history)';
  }

  @override
  bool operator ==(covariant Sales other) {
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
        listEquals(other.history, history);
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
        history.hashCode;
  }
}
