import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/profile/profile_data/profile_data_controller.dart';
import 'package:app_gestante/src/modules/tab/profile/profile_data/profile_form_controller.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:validatorless/validatorless.dart';

class ProfileDataPage extends StatefulWidget {
  const ProfileDataPage({super.key});

  @override
  State<ProfileDataPage> createState() => _ProfileDataPageState();
}

class _ProfileDataPageState extends State<ProfileDataPage>
    with ProfileFormController, MessageViewMixin {
  final formKey = GlobalKey<FormState>();

  final _controller = Injector.get<ProfileDataController>();

  @override
  void initState() {
    super.initState();
    if (mounted) messageListener(_controller);
    _controller.initialize().then((_) {
      initializeForm(_controller.pregnant, _controller.user);
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
      body: _content,
    );
  }

  AppBar get _buildAppBar => AppBar(
        title: const Text(
          'Meus Dados',
          style: AppTheme.titleSmallStyle,
        ),
        centerTitle: true,
      );

  Widget get _content => Column(
        children: [
          Expanded(
            child: Container(
              width: context.screenWidth,
              alignment: Alignment.topCenter,
              color: AppTheme.secondaryColor,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildFields,
                ],
              ),
            ),
          ),
        ],
      );

  Widget get _buildFields {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: BaseCard(
            child: Form(
              key: formKey,
              child: Watch(
                (_) => Column(
                  children: [
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
                      validator: Validatorless.required(
                          'Data de nascimento obrigatória'),
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
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: _controller.formEnabled
                            ? null
                            : Border.all(color: AppTheme.darkTextColor),
                        color: AppTheme.secondaryColor,
                      ),
                      child: DropdownMenu(
                        enabled: _controller.formEnabled,
                        expandedInsets: EdgeInsets.zero,
                        textStyle: AppTheme.textStyle,
                        inputDecorationTheme: const InputDecorationTheme(
                          border: null,
                          disabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                        menuStyle: MenuStyle(
                          backgroundColor: const WidgetStatePropertyAll(
                              AppTheme.secondaryColor),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        dropdownMenuEntries: const [
                          DropdownMenuEntry(
                            value: 1,
                            label: 'Teste',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    _controller.formEnabled ? _saveButton() : _editButton(),
                  ],
                ),
              ),
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
      style: _controller.formEnabled
          ? null
          : const TextStyle(color: AppTheme.textColor),
      enabled: _controller.formEnabled,
      validator: validator,
      decoration: InputDecoration(
        label: Text(label),
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
            _controller.setFormEnabled(false);
          }
        },
        child: const Text('Salvar'),
      ),
    );
  }

  SizedBox _editButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          _controller.setFormEnabled(true);
        },
        child: const Text('Editar'),
      ),
    );
  }
}
