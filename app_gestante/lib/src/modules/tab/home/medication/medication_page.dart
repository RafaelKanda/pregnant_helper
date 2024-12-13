import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/home/medication/medication_controller.dart';
import 'package:app_gestante/src/modules/tab/home/medication/medication_text_controller.dart';
import 'package:app_gestante/src/modules/tab/home/medication/widgets/medicine_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:validatorless/validatorless.dart';

class MedicationPage extends StatefulWidget {
  const MedicationPage({super.key});

  @override
  State<MedicationPage> createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage>
    with MessageViewMixin, MedicationTextController {
  final _controller = Injector.get<MedicationController>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    messageListener(_controller);
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
    return FutureBuilder(
      future: _controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            appBar: _buildAppBar,
            body: _buildBody,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  AppBar get _buildAppBar => AppBar(
        title: const Text(
          'Meus Medicamentos',
          style: AppTheme.titleSmallStyle,
        ),
        centerTitle: true,
      );

  Widget get _buildBody => Container(
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
                    onPressed: () => addMedicationDialog(),
                    child: const Text('Adicionar medicamento'),
                  ),
                ),
                const SizedBox(height: 16),
                _controller.medication.isNotEmpty
                    ? Expanded(
                        child: ListView(
                          children: _controller.medication
                              .map(
                                (medication) => MedicineCard(
                                  name: medication.name,
                                  dose: medication.dose,
                                  medicineTime: medication.medicationTime,
                                  onTap: () {
                                    _controller.deleteMedication(medication.id);
                                  },
                                ),
                              )
                              .toList(),
                        ),
                      )
                    : const Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text('Não foram encontrados medicamentos'),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      );

  void addMedicationDialog() {
    showDialog(
      context: context,
      builder: (context) => Form(
        key: formKey,
        child: AlertDialog(
          title: const Text(
            'Adicionar medicamento',
            style: AppTheme.titleSmallStyle,
            textAlign: TextAlign.center,
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
                  _controller.saveMedication(
                    Medication(
                      id: 0,
                      name: nameEC.text,
                      dose: doseEC.text,
                      medicationTime: medicationTimeEC.text,
                    ),
                  );
                  clearControllers();
                  Navigator.pop(context);
                }
              },
              child: const Text(
                'Salvar',
                style: AppTheme.subTitleStyle,
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
                  'Nome do medicamento',
                  validator: Validatorless.required('Nome obrigatório'),
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  medicationTimeEC,
                  'Tempo do medicamento (ex.: 6 em 6 horas)',
                  validator: Validatorless.required('Tempo obrigatório'),
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  doseEC,
                  'Dose do medicamento',
                  validator: Validatorless.required('Dose obrigatória'),
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
