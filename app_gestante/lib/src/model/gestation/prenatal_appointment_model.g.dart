// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prenatal_appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrenatalAppointmentModel _$PrenatalAppointmentModelFromJson(
        Map<String, dynamic> json) =>
    PrenatalAppointmentModel(
      appointmentDate: DateTime.parse(json['appointmentDate'] as String),
      observations: json['observations'] as String,
    );

Map<String, dynamic> _$PrenatalAppointmentModelToJson(
        PrenatalAppointmentModel instance) =>
    <String, dynamic>{
      'appointmentDate': instance.appointmentDate.toIso8601String(),
      'observations': instance.observations,
    };
