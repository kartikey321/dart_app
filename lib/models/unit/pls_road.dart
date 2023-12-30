// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PlcRoad {
  String? corner;
  String? park;
  String? floor;
  String? other;
  PlcRoad({
    this.corner,
    this.park,
    this.floor,
    this.other,
  });

  PlcRoad copyWith({
    String? corner,
    String? park,
    String? floor,
    String? other,
  }) {
    return PlcRoad(
      corner: corner ?? this.corner,
      park: park ?? this.park,
      floor: floor ?? this.floor,
      other: other ?? this.other,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corner': corner,
      'park': park,
      'floor': floor,
      'other': other,
    };
  }

  factory PlcRoad.fromMap(Map<String, dynamic> map) {
    return PlcRoad(
      corner: map['corner'] != null ? map['corner'] as String : null,
      park: map['park'] != null ? map['park'] as String : null,
      floor: map['floor'] != null ? map['floor'] as String : null,
      other: map['other'] != null ? map['other'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlcRoad.fromJson(String source) =>
      PlcRoad.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PlcRoad(corner: $corner, park: $park, floor: $floor, other: $other)';
  }

  @override
  bool operator ==(covariant PlcRoad other) {
    if (identical(this, other)) return true;

    return other.corner == corner &&
        other.park == park &&
        other.floor == floor &&
        other.other == other;
  }

  @override
  int get hashCode {
    return corner.hashCode ^ park.hashCode ^ floor.hashCode ^ other.hashCode;
  }
}
