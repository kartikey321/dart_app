// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PLC {
  String name;
  bool enabled;
  PLC({
    required this.name,
    required this.enabled,
  });

  PLC copyWith({
    String? name,
    bool? enabled,
  }) {
    return PLC(
      name: name ?? this.name,
      enabled: enabled ?? this.enabled,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'enabled': enabled,
    };
  }

  factory PLC.fromMap(Map<String, dynamic> map) {
    return PLC(
      name: map['name'] as String,
      enabled: map['enabled'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory PLC.fromJson(String source) =>
      PLC.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PLC(name: $name, enabled: $enabled)';

  @override
  bool operator ==(covariant PLC other) {
    if (identical(this, other)) return true;

    return other.name == name && other.enabled == enabled;
  }

  @override
  int get hashCode => name.hashCode ^ enabled.hashCode;
}
