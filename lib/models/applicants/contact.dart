// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Contact {
  String? telephoneNo;
  String? officeNo;
  String mobile;
  Contact({
    this.telephoneNo,
    this.officeNo,
    required this.mobile,
  });

  Contact copyWith({
    String? telephoneNo,
    String? officeNo,
    String? mobile,
  }) {
    return Contact(
      telephoneNo: telephoneNo ?? this.telephoneNo,
      officeNo: officeNo ?? this.officeNo,
      mobile: mobile ?? this.mobile,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'telephoneNo': telephoneNo,
      'officeNo': officeNo,
      'mobile': mobile,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      telephoneNo:
          map['telephoneNo'] != null ? map['telephoneNo'] as String : null,
      officeNo: map['officeNo'] != null ? map['officeNo'] as String : null,
      mobile: map['mobile'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Contact(telephoneNo: $telephoneNo, officeNo: $officeNo, mobile: $mobile)';

  @override
  bool operator ==(covariant Contact other) {
    if (identical(this, other)) return true;

    return other.telephoneNo == telephoneNo &&
        other.officeNo == officeNo &&
        other.mobile == mobile;
  }

  @override
  int get hashCode =>
      telephoneNo.hashCode ^ officeNo.hashCode ^ mobile.hashCode;
}
