// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TransactionDetails {
  String? transactionNo;
  DateTime clearanceDate;
  DateTime? chequeDate;
  String? bankName;
  TransactionDetails({
    required this.transactionNo,
    required this.clearanceDate,
    this.chequeDate,
    this.bankName,
  });

  TransactionDetails copyWith({
    String? transactionNo,
    DateTime? clearanceDate,
    DateTime? chequeDate,
    String? bankName,
  }) {
    return TransactionDetails(
      transactionNo: transactionNo ?? this.transactionNo,
      clearanceDate: clearanceDate ?? this.clearanceDate,
      chequeDate: chequeDate ?? this.chequeDate,
      bankName: bankName ?? this.bankName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transactionNo': transactionNo,
      'clearanceDate': clearanceDate.toIso8601String(),
      'chequeDate': chequeDate?.toIso8601String(),
      'bankName': bankName,
    };
  }

  factory TransactionDetails.fromMap(Map<String, dynamic> map) {
    return TransactionDetails(
      transactionNo: map['transactionNo'] as String,
      clearanceDate: DateTime.parse(map['clearanceDate'] as String),
      chequeDate: map['chequeDate'] != null
          ? DateTime.parse(map['chequeDate'] as String)
          : null,
      bankName: map['bankName'] != null ? map['bankName'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionDetails.fromJson(String source) =>
      TransactionDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TransactionDetails(transactionNo: $transactionNo, clearanceDate: $clearanceDate, chequeDate: $chequeDate, bankName: $bankName)';
  }

  @override
  bool operator ==(covariant TransactionDetails other) {
    if (identical(this, other)) return true;

    return other.transactionNo == transactionNo &&
        other.clearanceDate == clearanceDate &&
        other.chequeDate == chequeDate &&
        other.bankName == bankName;
  }

  @override
  int get hashCode {
    return transactionNo.hashCode ^
        clearanceDate.hashCode ^
        chequeDate.hashCode ^
        bankName.hashCode;
  }
}
