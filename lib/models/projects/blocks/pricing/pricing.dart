// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PriceValueTypes {
  static const String LUMP_SUM = 'LUMP_SUM';
  static const String PER_AREA = 'PER_AREA';
}

class UnitCategory {
  static const String Type_II = 'Type_II';
  static const String Type_III = 'Type_III';
  static const String Type_IV = 'Type_IV';
  static const String Type_V = 'Type_V';
}

class PricingField {
  String name;
  double value;
  String priceValueType;
  PricingField({
    required this.name,
    required this.value,
    required this.priceValueType,
  });

  PricingField copyWith({
    String? name,
    double? value,
    String? priceValueType,
  }) {
    return PricingField(
      name: name ?? this.name,
      value: value ?? this.value,
      priceValueType: priceValueType ?? this.priceValueType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'priceValueType': priceValueType,
    };
  }

  factory PricingField.fromMap(Map<String, dynamic> map) {
    return PricingField(
      name: map['name'] as String,
      value: map['value'] as double,
      priceValueType: map['priceValueType'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PricingField.fromJson(String source) =>
      PricingField.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PricingField(name: $name, value: $value, priceValueType: $priceValueType)';

  @override
  bool operator ==(covariant PricingField other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.value == value &&
        other.priceValueType == priceValueType;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode ^ priceValueType.hashCode;
}
