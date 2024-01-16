// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:dart_app/models/projects/approvals/approval.dart';

class FloorProgress {
  DateTime startDate;
  Duration targetDays; 
  DateTime targeDate;
  String floorNo;
  FloorProgress({
    required this.startDate,
    required this.targetDays,
    required this.targeDate,
    required this.floorNo,
  });

  FloorProgress copyWith({
    DateTime? startDate,
    Duration? targetDays,
    DateTime? targeDate,
    String? floorNo,
  }) {
    return FloorProgress(
      startDate: startDate ?? this.startDate,
      targetDays: targetDays ?? this.targetDays,
      targeDate: targeDate ?? this.targeDate,
      floorNo: floorNo ?? this.floorNo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startDate': startDate.toIso8601String(),
      'targetDays': targetDays.inDays,
      'targeDate': targeDate.toIso8601String(),
      'floorNo': floorNo,
    };
  }

  factory FloorProgress.fromMap(Map<String, dynamic> map) {
    return FloorProgress(
      startDate: DateTime.parse(map['startDate'] as String),
      targetDays: Duration(days: map['targetDays'] as int),
      targeDate: DateTime.parse(map['targeDate'] as String),
      floorNo: map['floorNo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FloorProgress.fromJson(String source) =>
      FloorProgress.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FloorProgress(startDate: $startDate, targetDays: $targetDays, targeDate: $targeDate, floorNo: $floorNo)';
  }

  @override
  bool operator ==(covariant FloorProgress other) {
    if (identical(this, other)) return true;

    return other.startDate == startDate &&
        other.targetDays == targetDays &&
        other.targeDate == targeDate &&
        other.floorNo == floorNo;
  }

  @override
  int get hashCode {
    return startDate.hashCode ^
        targetDays.hashCode ^
        targeDate.hashCode ^
        floorNo.hashCode;
  }
}

class Progress {
  List<ApprovalFile> documents;
  List<FloorProgress> floors;
  Progress({
    required this.documents,
    required this.floors,
  });

  Progress copyWith({
    List<ApprovalFile>? documents,
    List<FloorProgress>? floors,
  }) {
    return Progress(
      documents: documents ?? this.documents,
      floors: floors ?? this.floors,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documents': documents.map((x) => x.toMap()).toList(),
      'floors': floors.map((x) => x.toMap()).toList(),
    };
  }

  factory Progress.fromMap(Map<String, dynamic> map) {
    return Progress(
      documents: List<ApprovalFile>.from(
        (map['documents'] as List<int>).map<ApprovalFile>(
          (x) => ApprovalFile.fromMap(x as Map<String, dynamic>),
        ),
      ),
      floors: List<FloorProgress>.from(
        (map['floors'] as List<int>).map<FloorProgress>(
          (x) => FloorProgress.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Progress.fromJson(String source) =>
      Progress.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Progress(documents: $documents, floors: $floors)';

  @override
  bool operator ==(covariant Progress other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.documents, documents) &&
        listEquals(other.floors, floors);
  }

  @override
  int get hashCode => documents.hashCode ^ floors.hashCode;
}
