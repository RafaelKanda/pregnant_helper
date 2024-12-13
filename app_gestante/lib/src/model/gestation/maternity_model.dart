// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'maternity_model.g.dart';

class Maternity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BoolColumn get shareData => boolean()();
}

@JsonSerializable()
class MaternityModel {
  final String name;
  final bool shareData;

  MaternityModel({
    required this.name,
    required this.shareData,
  });

  factory MaternityModel.fromJson(Map<String, dynamic> json) =>
      _$MaternityModelFromJson(json);

  Map<String, dynamic> toJson() => _$MaternityModelToJson(this);

  MaternityModel copyWith({
    String? name,
    bool? shareData,
  }) {
    return MaternityModel(
      name: name ?? this.name,
      shareData: shareData ?? this.shareData,
    );
  }
}
