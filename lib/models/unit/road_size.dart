import 'dart:convert';

class RoadSize {
  double front;
  double corner;
  RoadSize({
    required this.front,
    required this.corner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'front': front,
      'corner': corner,
    };
  }

  factory RoadSize.fromMap(Map<String, dynamic> map) {
    return RoadSize(
      front: map['front'] as double,
      corner: map['corner'] as double,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory RoadSize.fromJson(String source) =>
      RoadSize.fromMap(json.decode(source) as Map<String, dynamic>);
}
