// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UnitDimension {
  double front;
  double back;
  double left;
  double right;
  UnitDimension({
    required this.front,
    required this.back,
    required this.left,
    required this.right,
  });

  UnitDimension copyWith({
    double? front,
    double? back,
    double? left,
    double? right,
  }) {
    return UnitDimension(
      front: front ?? this.front,
      back: back ?? this.back,
      left: left ?? this.left,
      right: right ?? this.right,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'front': front,
      'back': back,
      'left': left,
      'right': right,
    };
  }

  factory UnitDimension.fromMap(Map<String, dynamic> map) {
    return UnitDimension(
      front: map['front'] as double,
      back: map['back'] as double,
      left: map['left'] as double,
      right: map['right'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory UnitDimension.fromJson(String source) =>
      UnitDimension.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UnitDimension(front: $front, back: $back, left: $left, right: $right)';
  }

  @override
  bool operator ==(covariant UnitDimension other) {
    if (identical(this, other)) return true;

    return other.front == front &&
        other.back == back &&
        other.left == left &&
        other.right == right;
  }

  @override
  int get hashCode {
    return front.hashCode ^ back.hashCode ^ left.hashCode ^ right.hashCode;
  }
}
