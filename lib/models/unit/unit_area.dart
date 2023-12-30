// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UnitArea {
  double plotArea;
  double constructedArea;
  double covered;
  double superArea;
  double carpetArea;
  UnitArea({
    required this.plotArea,
    required this.constructedArea,
    required this.covered,
    required this.superArea,
    required this.carpetArea,
  });

  UnitArea copyWith({
    double? plotArea,
    double? constructedArea,
    double? covered,
    double? superArea,
    double? carpetArea,
  }) {
    return UnitArea(
      plotArea: plotArea ?? this.plotArea,
      constructedArea: constructedArea ?? this.constructedArea,
      covered: covered ?? this.covered,
      superArea: superArea ?? this.superArea,
      carpetArea: carpetArea ?? this.carpetArea,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plotArea': plotArea,
      'constructedArea': constructedArea,
      'covered': covered,
      'superArea': superArea,
      'carpetArea': carpetArea,
    };
  }

  factory UnitArea.fromMap(Map<String, dynamic> map) {
    return UnitArea(
      plotArea: map['plotArea'] as double,
      constructedArea: map['constructedArea'] as double,
      covered: map['covered'] as double,
      superArea: map['superArea'] as double,
      carpetArea: map['carpetArea'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory UnitArea.fromJson(String source) =>
      UnitArea.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UnitArea(plotArea: $plotArea, constructedArea: $constructedArea, covered: $covered, superArea: $superArea, carpetArea: $carpetArea)';
  }

  @override
  bool operator ==(covariant UnitArea other) {
    if (identical(this, other)) return true;

    return other.plotArea == plotArea &&
        other.constructedArea == constructedArea &&
        other.covered == covered &&
        other.superArea == superArea &&
        other.carpetArea == carpetArea;
  }

  @override
  int get hashCode {
    return plotArea.hashCode ^
        constructedArea.hashCode ^
        covered.hashCode ^
        superArea.hashCode ^
        carpetArea.hashCode;
  }
}
