// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Intrest {
  double previous;
  double overdueAmount;
  DateTime startDate;
  DateTime? endTime//;
  String intrestPercentage;
  double? intrest;
  Intrest({
    required this.previous,
    required this.overdueAmount,
    required this.startDate,
    this.endTime,
    required this.intrestPercentage,
    this.intrest,
  });

  Intrest copyWith({
    double? previous,
    double? overdueAmount,
    DateTime? startDate,
    DateTime? endTime,
    String? intrestPercentage,
    double? intrest,
  }) {
    return Intrest(
      previous: previous ?? this.previous,
      overdueAmount: overdueAmount ?? this.overdueAmount,
      startDate: startDate ?? this.startDate,
      endTime: endTime ?? this.endTime,
      intrestPercentage: intrestPercentage ?? this.intrestPercentage,
      intrest: intrest ?? this.intrest,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'previous': previous,
      'overdueAmount': overdueAmount,
      'startDate': startDate.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
      'intrestPercentage': intrestPercentage,
      'intrest': intrest,
    };
  }

  factory Intrest.fromMap(Map<String, dynamic> map) {
    return Intrest(
      previous: map['previous'] as double,
      overdueAmount: map['overdueAmount'] as double,
      startDate: DateTime.parse(map['startDate'] as String),
      endTime: map['endTime'] != null
          ? DateTime.parse(map['endTime'] as String)
          : null,
      intrestPercentage: map['intrestPercentage'] as String,
      intrest: map['intrest'] != null ? map['intrest'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Intrest.fromJson(String source) =>
      Intrest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Intrest(previous: $previous, overdueAmount: $overdueAmount, startDate: $startDate, endTime: $endTime, intrestPercentage: $intrestPercentage, intrest: $intrest)';
  }

  @override
  bool operator ==(covariant Intrest other) {
    if (identical(this, other)) return true;

    return other.previous == previous &&
        other.overdueAmount == overdueAmount &&
        other.startDate == startDate &&
        other.endTime == endTime &&
        other.intrestPercentage == intrestPercentage &&
        other.intrest == intrest;
  }

  @override
  int get hashCode {
    return previous.hashCode ^
        overdueAmount.hashCode ^
        startDate.hashCode ^
        endTime.hashCode ^
        intrestPercentage.hashCode ^
        intrest.hashCode;
  }
}
