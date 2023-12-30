// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StandardSize {
  String plotArea;
  String coveredArea;
  StandardSize({
    required this.plotArea,
    required this.coveredArea,
  });

  StandardSize copyWith({
    String? plotArea,
    String? coveredArea,
  }) {
    return StandardSize(
      plotArea: plotArea ?? this.plotArea,
      coveredArea: coveredArea ?? this.coveredArea,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plotArea': plotArea,
      'coveredArea': coveredArea,
    };
  }

  factory StandardSize.fromMap(Map<String, dynamic> map) {
    return StandardSize(
      plotArea: map['plotArea'] as String,
      coveredArea: map['coveredArea'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StandardSize.fromJson(String source) =>
      StandardSize.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'StandardSize(plotArea: $plotArea, coveredArea: $coveredArea)';

  @override
  bool operator ==(covariant StandardSize other) {
    if (identical(this, other)) return true;

    return other.plotArea == plotArea && other.coveredArea == coveredArea;
  }

  @override
  int get hashCode => plotArea.hashCode ^ coveredArea.hashCode;
}
