// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Authority {
  String designation; //add datetime
  String name;
  Authority({
    required this.designation,
    required this.name,
  });

  Authority copyWith({
    String? designation,
    String? name,
  }) {
    return Authority(
      designation: designation ?? this.designation,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'designation': designation,
      'name': name,
    };
  }

  factory Authority.fromMap(Map<String, dynamic> map) {
    return Authority(
      designation: map['designation'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Authority.fromJson(String source) =>
      Authority.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Authority(designation: $designation, name: $name)';

  @override
  bool operator ==(covariant Authority other) {
    if (identical(this, other)) return true;

    return other.designation == designation && other.name == name;
  }

  @override
  int get hashCode => designation.hashCode ^ name.hashCode;
}
