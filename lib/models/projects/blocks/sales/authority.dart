// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Authority {
  DateTime date;
  String designation; 
  String name;
  Authority({
    required this.date,
    required this.designation,
    required this.name,
  });
  

  Authority copyWith({
    DateTime? date,
    String? designation,
    String? name,
  }) {
    return Authority(
      date: date ?? this.date,
      designation: designation ?? this.designation,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date.millisecondsSinceEpoch,
      'designation': designation,
      'name': name,
    };
  }

  factory Authority.fromMap(Map<String, dynamic> map) {
    return Authority(
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      designation: map['designation'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Authority.fromJson(String source) => Authority.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Authority(date: $date, designation: $designation, name: $name)';

  @override
  bool operator ==(covariant Authority other) {
    if (identical(this, other)) return true;
  
    return 
      other.date == date &&
      other.designation == designation &&
      other.name == name;
  }

  @override
  int get hashCode => date.hashCode ^ designation.hashCode ^ name.hashCode;
}
