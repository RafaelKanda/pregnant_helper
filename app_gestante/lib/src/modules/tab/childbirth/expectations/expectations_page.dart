import 'dart:developer';

import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/model/birth_plan/expectations_model.dart';
import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_controller.dart';
import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_form_controller.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';

class ExpectationsPage extends StatefulWidget {
  const ExpectationsPage({super.key});

  @override
  State<ExpectationsPage> createState() => _ExpectationsPageState();
}

class _ExpectationsPageState extends State<ExpectationsPage>
    with ExpectationsFormController, MessageViewMixin {
  final formKey = GlobalKey<FormState>();
  final _controller = Injector.get<ExpectationsController>();

  List<int> selectedIndex = [];

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      setState(() {
        initializeForm(_controller.expectation);
      });
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
        'Expectativas para o Parto',
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
                  'Você gostaria de ...',
                  style: AppTheme.titleSmallStyle,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ter um acompanhante?',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(companionEC),
                const SizedBox(height: 10),
                const Text(
                  'Raspar os pelos íntimos?',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(shaveIntimateHairEC),
                const SizedBox(height: 10),
                const Text(
                  'Fazer lavagem intestinal?',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(bowelWashOrSuppositoryEC),
                const SizedBox(height: 10),
                const Text(
                  'Ter um ambiente com pouca luminosidade?',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(lowLightEnvironmentEC),
                const SizedBox(height: 10),
                const Text(
                  'Ouvir música?',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(listenToMusicEC),
                const SizedBox(height: 10),
                const Text(
                  'Beber líquidos',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(drinkLiquidsEC),
                const SizedBox(height: 10),
                const Text(
                  'Registar com fotos ou filmagens?',
                  style: AppTheme.textStyle,
                ),
                _customTabBar(recordPhotosOrVideosEC),
                const SizedBox(height: 16),
                _saveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customTabBar(TextEditingController controllerEC) {
    log('Controlador: ${controllerEC.text}');
    return Row(
      children: [
        _tab('Sim', 0, controllerEC),
        _tab('Não', 1, controllerEC),
        _tab('Não sei', 2, controllerEC),
      ],
    );
  }

  Widget _tab(String content, int index, TextEditingController controllerEC) {
    return Expanded(
      child: InkWell(
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: _getBorderRadius(index),
            border: Border.all(color: AppTheme.darkTextColor),
            color: controllerEC.text == index.toString()
                ? AppTheme.secondaryColor
                : null,
          ),
          child: Center(
            child: Text(content),
          ),
        ),
        onTap: () {
          setState(() {
            controllerEC.text = index.toString();
          });
        },
      ),
    );
  }

  BorderRadiusGeometry? _getBorderRadius(int index) {
    switch (index) {
      case 0:
        return const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        );
      case 1:
        return null;
      case 2:
        return const BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        );
    }

    return null;
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
            log('Tá aqui');
            _controller.saveExpectations(
              Expectation(
                id: 1,
                companion: Alternatives.values[int.parse(companionEC.text)],
                shaveIntimateHair:
                    Alternatives.values[int.parse(shaveIntimateHairEC.text)],
                bowelWashOrSuppository: Alternatives
                    .values[int.parse(bowelWashOrSuppositoryEC.text)],
                lowLightEnvironment:
                    Alternatives.values[int.parse(lowLightEnvironmentEC.text)],
                listenToMusic:
                    Alternatives.values[int.parse(listenToMusicEC.text)],
                drinkLiquids:
                    Alternatives.values[int.parse(drinkLiquidsEC.text)],
                recordPhotosOrVideos:
                    Alternatives.values[int.parse(recordPhotosOrVideosEC.text)],
              ),
            );
          }
        },
        child: const Text('Salvar'),
      ),
    );
  }
}
