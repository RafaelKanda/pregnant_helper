import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/modules/tab/childbirth/history/history_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/history/history_form_controller.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_core.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with HistoryFormController, MessageViewMixin {
  final formKey = GlobalKey<FormState>();
  final _controller = Injector.get<HistoryController>();

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      initializeForm(_controller.model!);
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
        'Gestações Anteriores',
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
                  'História das gestações anteriores',
                  style: AppTheme.titleSmallStyle,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  pregnantNumberEC,
                  'Número de vezes que já ficou grávida',
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  childbirthNumberEC,
                  'Número de vezes que já teve parto',
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  abortionNumberEC,
                  'Número de abortos que já teve',
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
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

  Widget _saveButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          FocusScope.of(context).unfocus();
          final valid = formKey.currentState?.validate() ?? false;

          if (valid) {
            _controller.saveHistory(PreviousPregnancy(
              id: 1,
              pregnancyNumber: pregnantNumberEC.text.isEmpty
                  ? null
                  : int.parse(pregnantNumberEC.text),
              givenBirthNumber: childbirthNumberEC.text.isEmpty
                  ? null
                  : int.parse(childbirthNumberEC.text),
              abortionsNumber: abortionNumberEC.text.isEmpty
                  ? null
                  : int.parse(abortionNumberEC.text),
            ));
          }
        },
        child: const Text('Salvar'),
      ),
    );
  }
}
