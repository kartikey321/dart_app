// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/approvals/approval.dart';
import 'package:dart_app/models/projects/blocks/sales/authority.dart';
import 'package:dart_app/models/projects/blocks/sales/invoices/transaction_details.dart';

class TransactionStatus {
  static const String APPROVAL_PENDING = "APPROVAL_PENDING";
  static const String APPROVED = "APPROVED";
}

class TransactionType {
  static const String INSTALLMENT = "INSTALLMENT";
  static const String INTEREST_PENALTY = "INTEREST/PENALTY";
  static const String CUSTOMIZATION = "CUSTOMIZATION";
  static const String REFUND = "REFUND";
  static const String OTHER = "OTHER";
}

class SourceFundType {
  static const String SELF_FUNDED = 'SELF_FUNDED';
  static const String FINANCED = 'FINANCED';
}

class ModeOfPayment {
  static const String BANK_TRANSFER = "BANK_TRANSFER";
  static const String CHEQUE = 'CHEQUE';
  static const String CASH = 'CASH';
  static const String DEMAND_DRAFT = 'DEMAND_DRAFT';
  static const String IN_APP_PAYMENT = 'IN_APP_PAYMENT';
  static const String POS = 'POS';
}

class Invoice {
  Authority createdBy;
  Authority approvedBy;
  DateTime date;
  double amount;
  bool transaction_completed;
  String transaction_status;
  String transaction_type;
  String? transaction_type_data; //for storing transaction_type if its other
  String recieptNo;
  String sourceOfFund;
  String modeOfPayment;
  String gstRate;
  List<Map<String, dynamic>> notes;
  List<ApprovalFile> documents;
  TransactionDetails transactionDetails;
  Invoice({
    required this.createdBy,
    required this.approvedBy,
    required this.date,
    required this.amount,
    required this.transaction_completed,
    required this.transaction_status,
    required this.transaction_type,
    this.transaction_type_data,
    required this.recieptNo,
    required this.sourceOfFund,
    required this.modeOfPayment,
    required this.gstRate,
    required this.notes,
    required this.documents,
    required this.transactionDetails,
  });

  Invoice copyWith({
    Authority? createdBy,
    Authority? approvedBy,
    DateTime? date,
    double? amount,
    bool? transaction_completed,
    String? transaction_status,
    String? transaction_type,
    String? transaction_type_data,
    String? recieptNo,
    String? sourceOfFund,
    String? modeOfPayment,
    String? gstRate,
    List<Map<String, dynamic>>? notes,
    List<ApprovalFile>? documents,
    TransactionDetails? transactionDetails,
  }) {
    return Invoice(
      createdBy: createdBy ?? this.createdBy,
      approvedBy: approvedBy ?? this.approvedBy,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      transaction_completed:
          transaction_completed ?? this.transaction_completed,
      transaction_status: transaction_status ?? this.transaction_status,
      transaction_type: transaction_type ?? this.transaction_type,
      transaction_type_data:
          transaction_type_data ?? this.transaction_type_data,
      recieptNo: recieptNo ?? this.recieptNo,
      sourceOfFund: sourceOfFund ?? this.sourceOfFund,
      modeOfPayment: modeOfPayment ?? this.modeOfPayment,
      gstRate: gstRate ?? this.gstRate,
      notes: notes ?? this.notes,
      documents: documents ?? this.documents,
      transactionDetails: transactionDetails ?? this.transactionDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': createdBy.toMap(),
      'approvedBy': approvedBy.toMap(),
      'date': date.toIso8601String(),
      'amount': amount,
      'transaction_completed': transaction_completed,
      'transaction_status': transaction_status,
      'transaction_type': transaction_type,
      'transaction_type_data': transaction_type_data,
      'recieptNo': recieptNo,
      'sourceOfFund': sourceOfFund,
      'modeOfPayment': modeOfPayment,
      'gstRate': gstRate,
      'notes': notes,
      'documents': documents.map((x) => x.toMap()).toList(),
      'transactionDetails': transactionDetails.toMap(),
    };
  }

  factory Invoice.fromMap(Map<String, dynamic> map) {
    return Invoice(
      createdBy: Authority.fromMap(map['createdBy'] as Map<String, dynamic>),
      approvedBy: Authority.fromMap(map['approvedBy'] as Map<String, dynamic>),
      date: DateTime.parse(map['date'] as String),
      amount: map['amount'] as double,
      transaction_completed: map['transaction_completed'] as bool,
      transaction_status: map['transaction_status'] as String,
      transaction_type: map['transaction_type'] as String,
      transaction_type_data: map['transaction_type_data'] != null
          ? map['transaction_type_data'] as String
          : null,
      recieptNo: map['recieptNo'] as String,
      sourceOfFund: map['sourceOfFund'] as String,
      modeOfPayment: map['modeOfPayment'] as String,
      gstRate: map['gstRate'] as String,
      notes: List<Map<String, dynamic>>.from(
        (map['notes'] as List).map<Map<String, dynamic>>(
          (x) => x,
        ),
      ),
      documents: List<ApprovalFile>.from(
        (map['documents'] as List).map<ApprovalFile>(
          (x) => ApprovalFile.fromMap(x as Map<String, dynamic>),
        ),
      ),
      transactionDetails: TransactionDetails.fromMap(
          map['transactionDetails'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Invoice.fromJson(String source) =>
      Invoice.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Invoice(createdBy: $createdBy, approvedBy: $approvedBy, date: $date, amount: $amount, transaction_completed: $transaction_completed, transaction_status: $transaction_status, transaction_type: $transaction_type, transaction_type_data: $transaction_type_data, recieptNo: $recieptNo, sourceOfFund: $sourceOfFund, modeOfPayment: $modeOfPayment, gstRate: $gstRate, notes: $notes, documents: $documents, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(covariant Invoice other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.createdBy == createdBy &&
        other.approvedBy == approvedBy &&
        other.date == date &&
        other.amount == amount &&
        other.transaction_completed == transaction_completed &&
        other.transaction_status == transaction_status &&
        other.transaction_type == transaction_type &&
        other.transaction_type_data == transaction_type_data &&
        other.recieptNo == recieptNo &&
        other.sourceOfFund == sourceOfFund &&
        other.modeOfPayment == modeOfPayment &&
        other.gstRate == gstRate &&
        listEquals(other.notes, notes) &&
        listEquals(other.documents, documents) &&
        other.transactionDetails == transactionDetails;
  }

  @override
  int get hashCode {
    return createdBy.hashCode ^
        approvedBy.hashCode ^
        date.hashCode ^
        amount.hashCode ^
        transaction_completed.hashCode ^
        transaction_status.hashCode ^
        transaction_type.hashCode ^
        transaction_type_data.hashCode ^
        recieptNo.hashCode ^
        sourceOfFund.hashCode ^
        modeOfPayment.hashCode ^
        gstRate.hashCode ^
        notes.hashCode ^
        documents.hashCode ^
        transactionDetails.hashCode;
  }
}
