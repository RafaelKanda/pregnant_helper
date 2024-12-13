import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/appointments_exams_controller.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/text_controllers/appointments_text_controller.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/widgets/card_with_date.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:validatorless/validatorless.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key, required this.controller});

  final AppointmentsExamsController controller;

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage>
    with AppointmentsTextController {
  AppointmentsExamsController get _controller => widget.controller;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      effect(() {
        if (_controller.updated == true) {
          _controller.resetUpdated();
        }
      });
    });
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Watch(
        (_) => Visibility(
          visible: !_controller.updated,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => addAppointmentDialog(),
                  child: const Text('Adicionar consulta'),
                ),
              ),
              const SizedBox(height: 16),
              _controller.appointments.isNotEmpty
                  ? Expanded(
                      child: ListView(
                        children: _controller.appointments
                            .map(
                              (appointment) => CardWithDate(
                                title: appointment.title,
                                date: appointment.appointmentDate,
                                description: appointment.description,
                                onTap: () {
                                  _controller.deleteAppointment(appointment.id);
                                },
                              ),
                            )
                            .toList(),
                      ),
                    )
                  : const Expanded(
                      child: SizedBox(
                        child: Center(
                          child: Text(
                            'Não foram encontradas consultas',
                            style: AppTheme.subTitleStyle,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void addAppointmentDialog() {
    showDialog(
      context: context,
      builder: (context) => Form(
        key: formKey,
        child: AlertDialog(
          title: const Text(
            'Adicionar consulta',
            textAlign: TextAlign.center,
            style: AppTheme.titleSmallStyle,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancelar',
                style: AppTheme.subTitleStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                final valid = formKey.currentState?.validate() ?? false;
                if (valid) {
                  _controller.saveAppointment(
                    Appointment(
                      id: 0,
                      title: nameEC.text,
                      appointmentDate: dateEC.text,
                      description: descriptionEC.text,
                    ),
                  );
                  clearControllers();
                  Navigator.pop(context);
                }
              },
              child: Text(
                'Salvar',
                style:
                    AppTheme.subTitleStyle.copyWith(color: AppTheme.textColor),
              ),
            ),
          ],
          content: SizedBox(
            width: context.screenWidth * .8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTextField(
                  nameEC,
                  'Nome da consulta',
                  validator: Validatorless.required('Nome obrigatório'),
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  dateEC,
                  'Data da consulta',
                  validator: Validatorless.required('Data obrigatória'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    DataInputFormatter(),
                  ],
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  descriptionEC,
                  'Descrição',
                  validator: Validatorless.required('Descrição obrigatória'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField _buildTextField(
    TextEditingController controller,
    String label, {
    FormFieldValidator<String?>? validator,
    TextInputType keyboardType = TextInputType.text,
    TextCapitalization captalization = TextCapitalization.sentences,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        label: Text(label),
      ),
      keyboardType: keyboardType,
      textCapitalization: captalization,
      inputFormatters: inputFormatters,
    );
  }
}
