// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';

part 'prenatal_appointment_model.g.dart';

class PrenatalAppointment extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get appointmentDate => dateTime()();
  TextColumn get observations => text()();
}

@JsonSerializable()
class PrenatalAppointmentModel {
  final DateTime appointmentDate;
  final String observations;

  PrenatalAppointmentModel({
    required this.appointmentDate,
    required this.observations,
  });

  factory PrenatalAppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$PrenatalAppointmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrenatalAppointmentModelToJson(this);

  PrenatalAppointmentModel copyWith({
    DateTime? appointmentDate,
    String? observations,
  }) {
    return PrenatalAppointmentModel(
      appointmentDate: appointmentDate ?? this.appointmentDate,
      observations: observations ?? this.observations,
    );
  }
}
