// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DemandType {
  static const String INSTALLMENT = "INSTALLMENT";
  static const String CUSTOMIZATION = "CUSTOMIZATION";
  static const String OTHER = "OTHER";
}

//create approved
class Demand {
  DateTime createdOn;
  String paymentStage;
  double amount;
  String demandType;
  DateTime dueTill;
  Demand({
    required this.createdOn,
    required this.paymentStage,
    required this.amount,
    required this.demandType,
    required this.dueTill,
  });

  Demand copyWith({
    DateTime? createdOn,
    String? paymentStage,
    double? amount,
    String? demandType,
    DateTime? dueTill,
  }) {
    return Demand(
      createdOn: createdOn ?? this.createdOn,
      paymentStage: paymentStage ?? this.paymentStage,
      amount: amount ?? this.amount,
      demandType: demandType ?? this.demandType,
      dueTill: dueTill ?? this.dueTill,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn.toIso8601String(),
      'paymentStage': paymentStage,
      'amount': amount,
      'demandType': demandType,
      'dueTill': dueTill.toIso8601String(),
    };
  }

  factory Demand.fromMap(Map<String, dynamic> map) {
    return Demand(
      createdOn: DateTime.parse(map['createdOn'] as String),
      paymentStage: map['paymentStage'] as String,
      amount: map['amount'] as double,
      demandType: map['demandType'] as String,
      dueTill: DateTime.parse(map['dueTill'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory Demand.fromJson(String source) =>
      Demand.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Demand(createdOn: $createdOn, paymentStage: $paymentStage, amount: $amount, demandType: $demandType, dueTill: $dueTill)';
  }

  @override
  bool operator ==(covariant Demand other) {
    if (identical(this, other)) return true;

    return other.createdOn == createdOn &&
        other.paymentStage == paymentStage &&
        other.amount == amount &&
        other.demandType == demandType &&
        other.dueTill == dueTill;
  }

  @override
  int get hashCode {
    return createdOn.hashCode ^
        paymentStage.hashCode ^
        amount.hashCode ^
        demandType.hashCode ^
        dueTill.hashCode;
  }
}
