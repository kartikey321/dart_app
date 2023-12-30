// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class PaymentStageType {
  static String STAGE_BOUND = 'STAGE_BOUND';
  static String TIME_BOUND = 'TIME_BOUND';
}

class PaymentStage {
  String name;
  String paymentStageType;
  String? completedPercentage;
  String? linkedStage;

  PaymentStage({
    required this.name,
    required this.paymentStageType,
    this.completedPercentage,
    String? linkedStage,
  }) : this.linkedStage = paymentStageType == PaymentStageType.STAGE_BOUND
            ? linkedStage
            : null {
    if (paymentStageType == PaymentStageType.STAGE_BOUND &&
        linkedStage == null) {
      throw ArgumentError(
          'linkedStage cannot be null when paymentStageType is STAGE_BOUND');
    }
  }

  PaymentStage copyWith({
    String? name,
    String? paymentStageType,
    String? completedPercentage,
    String? linkedStage,
  }) {
    return PaymentStage(
      name: name ?? this.name,
      paymentStageType: paymentStageType ?? this.paymentStageType,
      completedPercentage: completedPercentage ?? this.completedPercentage,
      linkedStage: linkedStage ?? this.linkedStage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'paymentStageType': paymentStageType,
      'completedPercentage': completedPercentage,
      'linkedStage': linkedStage,
    };
  }

  factory PaymentStage.fromMap(Map<String, dynamic> map) {
    return PaymentStage(
      name: map['name'] as String,
      paymentStageType: map['paymentStageType'] as String,
      completedPercentage: map['completedPercentage'] != null
          ? map['completedPercentage'] as String
          : null,
      linkedStage:
          map['linkedStage'] != null ? map['linkedStage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentStage.fromJson(String source) =>
      PaymentStage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentStage(name: $name, paymentStageType: $paymentStageType, completedPercentage: $completedPercentage, linkedStage: $linkedStage)';
  }

  @override
  bool operator ==(covariant PaymentStage other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.paymentStageType == paymentStageType &&
        other.completedPercentage == completedPercentage &&
        other.linkedStage == linkedStage;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        paymentStageType.hashCode ^
        completedPercentage.hashCode ^
        linkedStage.hashCode;
  }
}

class PaymentPlan {
  String name;
  List<PaymentStage> paymentPlans = [];
  PaymentPlan({
    required this.name,
    required this.paymentPlans,
  });

  PaymentPlan copyWith({
    String? name,
    List<PaymentStage>? paymentPlans,
  }) {
    return PaymentPlan(
      name: name ?? this.name,
      paymentPlans: paymentPlans ?? this.paymentPlans,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'paymentPlans': paymentPlans.map((x) => x.toMap()).toList(),
    };
  }

  factory PaymentPlan.fromMap(Map<String, dynamic> map) {
    return PaymentPlan(
      name: map['name'] as String,
      paymentPlans: List<PaymentStage>.from(
        (map['paymentPlans'] as List<int>).map<PaymentStage>(
          (x) => PaymentStage.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentPlan.fromJson(String source) =>
      PaymentPlan.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PaymentPlan(name: $name, paymentPlans: $paymentPlans)';

  @override
  bool operator ==(covariant PaymentPlan other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.name == name && listEquals(other.paymentPlans, paymentPlans);
  }

  @override
  int get hashCode => name.hashCode ^ paymentPlans.hashCode;
}
