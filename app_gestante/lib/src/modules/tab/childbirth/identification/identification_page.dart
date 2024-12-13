import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_form_controller.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_core.dart';
import 'package:validatorless/validatorless.dart';

class IdentificationPage extends StatefulWidget {
  const IdentificationPage({super.key});

  @override
  State<IdentificationPage> createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage>
    with IdentificationFormController, MessageViewMixin {
  final formKey = GlobalKey<FormState>();
  final _controller = Injector.get<IdentificationController>();

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      initializeForm(_controller.model);
    });
    messageListener(_controller);
    effect(() {
      if (_controller.saved) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      title: const Text(
        'Gestante',
        style: AppTheme.titleSmallStyle,
      ),
      centerTitle: true,
    );
  }

  Widget get _buildBody {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: BaseCard(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  'Dados da gestante',
                  style: AppTheme.titleSmallStyle,
                ),
                _buildTextField(
                  nameEC,
                  'Nome',
                  validator: Validatorless.required('Nome obrigatório'),
                  captalization: TextCapitalization.words,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  socialNameEC,
                  'Nome social',
                  captalization: TextCapitalization.words,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  birthdayEC,
                  'Data de nascimento',
                  validator:
                      Validatorless.required('Data de nascimento obrigatória'),
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    DataInputFormatter(),
                  ],
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  cpfEC,
                  'CPF',
                  validator: Validatorless.required('CPF obrigatório'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CpfInputFormatter()
                  ],
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  nationalHealthCardEC,
                  'Número do Cartão Nacional de Saúde',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  prenatalPlaceEC,
                  'Local que realiza o pré-natal',
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  profissionalEC,
                  'Nome do profissional',
                  captalization: TextCapitalization.words,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  prenatalPlaceContactEC,
                  'Contato do local',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    TelefoneInputFormatter(),
                  ],
                ),
                const SizedBox(height: 16),
                _saveButton(),
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
        label: Text(
          label,
        ),
      ),
      keyboardType: keyboardType,
      textCapitalization: captalization,
      inputFormatters: inputFormatters,
    );
  }

  SizedBox _saveButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          FocusScope.of(context).unfocus();
          final valid = formKey.currentState?.validate() ?? false;
          if (valid) {
            _controller.saveIdentification(updatePregnant(_controller.model!));
          }
        },
        child: const Text('Salvar'),
      ),
    );
  }
}
