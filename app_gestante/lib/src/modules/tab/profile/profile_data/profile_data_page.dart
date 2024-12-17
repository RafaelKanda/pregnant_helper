import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/model/gestation/pregnant_model.dart';
import 'package:app_gestante/src/model/user/user_model.dart';
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
        title: Watch(
          (_) => Text(
            _controller.formEnabled ? 'Alterar Dados' : 'Meus Dados',
            style: AppTheme.titleSmallStyle,
          ),
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
                      emailEC,
                      'E-mail',
                      validator: Validatorless.multiple([
                        Validatorless.required('E-mail obrigatório'),
                        Validatorless.email('O conteúdo não é um e-mail'),
                      ]),
                      keyboardType: TextInputType.emailAddress,
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
                    _customDropDown('Estado civil', maritalStatusEC, 0),
                    const SizedBox(height: 10),
                    _customDropDown('Nível de escolaridade', educationEC, 1),
                    const SizedBox(height: 10),
                    _customDropDown('Renda familiar', incomeEC, 2),
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

  Widget _customDropDown(
      String label, TextEditingController textController, int entries) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppTheme.secondaryColor,
        border: _controller.formEnabled
            ? null
            : Border.all(color: AppTheme.darkTextColor),
      ),
      child: DropdownMenu(
        enabled: _controller.formEnabled,
        initialSelection: int.tryParse(textController.text),
        expandedInsets: EdgeInsets.zero,
        textStyle: AppTheme.textStyle,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: AppTheme.textStyle,
          border: null,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        menuStyle: MenuStyle(
          backgroundColor:
              const WidgetStatePropertyAll(AppTheme.secondaryColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        label: textController.text.isEmpty
            ? Text(label)
            : Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.5, .5],
                    colors: [
                      Colors.white,
                      AppTheme.secondaryColor,
                    ],
                  ),
                ),
                child: Text(label),
              ),
        onSelected: (value) {
          textController.text = value.toString();
        },
        dropdownMenuEntries: _chooseDropList(entries),
      ),
    );
  }

  List<DropdownMenuEntry> _chooseDropList(int index) {
    switch (index) {
      case 0:
        return _maritalStatusEntries();
      case 1:
        return _educationEntries();
      case 2:
        return _incomeEntries();
      default:
        return [];
    }
  }

  List<DropdownMenuEntry> _maritalStatusEntries() {
    return [
      const DropdownMenuEntry(
        value: 0,
        label: 'Solteira',
      ),
      const DropdownMenuEntry(
        value: 1,
        label: 'Casada',
      ),
      const DropdownMenuEntry(
        value: 2,
        label: 'Divorciada',
      ),
      const DropdownMenuEntry(
        value: 3,
        label: 'Viúva',
      ),
      const DropdownMenuEntry(
        value: 4,
        label: 'União estável',
      ),
    ];
  }

  List<DropdownMenuEntry> _educationEntries() {
    return [
      const DropdownMenuEntry(
        value: 0,
        label: 'Ensino fundamental incompleto',
      ),
      const DropdownMenuEntry(
        value: 1,
        label: 'Ensino fundamental completo',
      ),
      const DropdownMenuEntry(
        value: 2,
        label: 'Ensino médio incompleto',
      ),
      const DropdownMenuEntry(
        value: 3,
        label: 'Ensino médio completo',
      ),
      const DropdownMenuEntry(
        value: 4,
        label: 'Ensino superior incompleta',
      ),
      const DropdownMenuEntry(
        value: 5,
        label: 'Ensino superior completa',
      ),
      const DropdownMenuEntry(
        value: 6,
        label: 'Superior a graduação',
      ),
    ];
  }

  List<DropdownMenuEntry> _incomeEntries() {
    return [
      const DropdownMenuEntry(
        value: 0,
        label: 'Até 1 salário mínimo',
      ),
      const DropdownMenuEntry(
        value: 1,
        label: 'Entre 1 e 2 salários mínimos',
      ),
      const DropdownMenuEntry(
        value: 2,
        label: 'Entre 2 e 3 salários mínimos',
      ),
      const DropdownMenuEntry(
        value: 3,
        label: 'Entre 3 e 5 salários mínimos',
      ),
      const DropdownMenuEntry(
        value: 4,
        label: 'Entre 5 e 10 salários mínimos',
      ),
      const DropdownMenuEntry(
        value: 5,
        label: 'Acima de 10 salários mínimos',
      ),
    ];
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
        onPressed: () async {
          FocusScope.of(context).unfocus();
          final valid = formKey.currentState?.validate() ?? false;
          if (valid) {
            final sucess = await _controller.saveProfile(
              PregnantModel(
                name: nameEC.text,
                socialName: socialNameEC.text,
                birthDate: birthdayEC.text,
                cpf: cpfEC.text,
                nationalHealthCardNumber: nationalHealthCardEC.text,
                preNatalPlace: prenatalPlaceEC.text,
                profissionalName: _controller.pregnant?.profissionalName,
                prenatalPlaceContact:
                    _controller.pregnant?.prenatalPlaceContact,
              ),
              UserData(
                id: 0,
                email: emailEC.text,
                maritalStatus: maritalStatusEC.text.isEmpty
                    ? null
                    : MaritalStatus.values[int.parse(maritalStatusEC.text)],
                education: educationEC.text.isEmpty
                    ? null
                    : Education.values[int.parse(educationEC.text)],
                familyIncome: incomeEC.text.isEmpty
                    ? null
                    : FamilyIncome.values[int.parse(incomeEC.text)],
              ),
            );
            if (sucess) _controller.setFormEnabled(false);
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
