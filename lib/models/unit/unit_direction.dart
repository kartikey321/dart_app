import 'dart:convert';

class UnitDirection {
  String east;
  String west;
  String north;
  String south;
  UnitDirection({
    required this.east,
    required this.west,
    required this.north,
    required this.south,
  });

  UnitDirection copyWith({
    String? east,
    String? west,
    String? north,
    String? south,
  }) {
    return UnitDirection(
      east: east ?? this.east,
      west: west ?? this.west,
      north: north ?? this.north,
      south: south ?? this.south,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'east': east,
      'west': west,
      'north': north,
      'south': south,
    };
  }

  factory UnitDirection.fromMap(Map<String, dynamic> map) {
    return UnitDirection(
      east: map['east'] as String,
      west: map['west'] as String,
      north: map['north'] as String,
      south: map['south'] as String,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory UnitDirection.fromJson(String source) =>
      UnitDirection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UnitDirection(east: $east, west: $west, north: $north, south: $south)';
  }

  @override
  bool operator ==(covariant UnitDirection other) {
    if (identical(this, other)) return true;

    return other.east == east &&
        other.west == west &&
        other.north == north &&
        other.south == south;
  }

  @override
  int get hashCode {
    return east.hashCode ^ west.hashCode ^ north.hashCode ^ south.hashCode;
  }
}
