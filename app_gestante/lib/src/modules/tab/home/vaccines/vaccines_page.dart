import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/home/vaccines/vaccines_controller.dart';
import 'package:app_gestante/src/modules/tab/home/vaccines/widgets/vaccine_card.dart';
import 'package:app_gestante/src/modules/tab/widgets/base_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';

class VaccinesPage extends StatefulWidget {
  const VaccinesPage({super.key});

  @override
  State<VaccinesPage> createState() => _VaccinesPageState();
}

class _VaccinesPageState extends State<VaccinesPage> {
  final _controller = Injector.get<VaccinesController>();

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
          'Minhas Vacinas',
          style: AppTheme.titleSmallStyle,
        ),
        centerTitle: true,
      );

  Widget get _buildBody => Padding(
        padding: const EdgeInsets.all(20),
        child: Watch(
          (_) => Visibility(
            visible: !_controller.updated,
            child: _controller.vaccines.isEmpty
                ? const Center(
                    child: Text(
                      'Carregando as vacinas',
                      style: AppTheme.subTitleStyle,
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Qualquer tempo',
                            style: AppTheme.titleSmallStyle,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: _controller.vaccines.map((vaccine) {
                            if (vaccine.id < _controller.vaccines.length - 1) {
                              return VaccineCard(
                                used: vaccine.used,
                                onChanged: () {
                                  _controller.updateVaccine(
                                    vaccine.copyWith(used: !vaccine.used),
                                  );
                                },
                                index: vaccine.id,
                              );
                            }
                            return Container();
                          }).toList(),
                        ),
                        const SizedBox(height: 32),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '20ª semana de gravidez até 45 dias após o parto',
                            textAlign: TextAlign.center,
                            style: AppTheme.titleSmallStyle,
                          ),
                        ),
                        const SizedBox(height: 10),
                        VaccineCard(
                          used: _controller.vaccines.last.used,
                          onChanged: () {
                            _controller.updateVaccine(
                              _controller.vaccines.last.copyWith(
                                used: !_controller.vaccines.last.used,
                              ),
                            );
                          },
                          index: _controller.vaccines.last.id,
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      );

  BaseCard _old() {
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Qualquer tempo',
            style: AppTheme.titleSmallStyle,
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 1,
            color: AppTheme.darkTextColor,
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(6),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              _buildTableRow(
                'Hepatite B (HB - recombinante) (Dose 1)',
                _controller.checkHepatitis1,
                0,
              ),
              _buildTableRow(
                'Hepatite B (HB - recombinante) (Dose 2)',
                _controller.checkHepatitis2,
                1,
              ),
              _buildTableRow(
                'Hepatite B (HB - recombinante) (Dose 3)',
                _controller.checkHepatitis3,
                2,
              ),
              _buildTableRow(
                'Difteria e Tétano (dT) (Dose 1)',
                _controller.checkDT1,
                3,
              ),
              _buildTableRow(
                'Difteria e Tétano (dT) (Dose 2)',
                _controller.checkDT2,
                4,
              ),
              _buildTableRow(
                'Difteria e Tétano (dT) (Dose 3)',
                _controller.checkDT3,
                5,
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            '20ª semana de gravidez até 45 dias após o parto',
            textAlign: TextAlign.center,
            style: AppTheme.titleSmallStyle,
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 1,
            color: AppTheme.darkTextColor,
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(6),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              _buildTableRow(
                'Vacina Difteria, Tétano, Pertussis (dTpa - acelular)',
                _controller.checkDTpa,
                6,
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  TableRow _buildTableRow(
    String title,
    bool value,
    int index,
  ) {
    return TableRow(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppTheme.darkTextColor),
        ),
      ),
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: AppTheme.textStyle,
          ),
        ),
        Checkbox(
          value: value,
          onChanged: (value) {
            if (value != null) {
              _controller.setCheck(value, index);
            }
          },
        ),
        IconButton(
          onPressed: () {
            showDialog(
                context: context, builder: (context) => _infoAlert(index));
          },
          icon: const Icon(
            Icons.info,
            color: AppTheme.darkTextColor,
          ),
        ),
      ],
    );
  }

  AlertDialog _infoAlert(int index) {
    return AlertDialog(
      title: const Text(
        'Sobre a vacina',
        textAlign: TextAlign.center,
        style: AppTheme.titleSmallStyle,
      ),
      content: SizedBox(
        width: context.screenWidth * .8,
        child: Text(
          _getInfo(index),
          textAlign: TextAlign.justify,
          style: AppTheme.textStyle,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Voltar'),
        ),
      ],
    );
  }

  String _getInfo(int index) {
    switch (index) {
      case 0:
      case 1:
      case 2:
        return 'Essa vacina protege contra Hepatite B. Pode ser tomada em qualquer tempo do pré-natal, precisando de três doses.';
      case 3:
      case 4:
      case 5:
        return 'Essa vacina protege contra Difteria e Tétano. Pode ser tomada em qualquer tempo do pré-natal precisando de três doses.';
      case 6:
        return 'Essa vacina protege contra Difteria, Tétano e Coqueluche. Indica-se tomar a partir da 20ª semana da gravidez ou o mais breve possível em até 45 dias pós-parto.';
    }
    return '';
  }
}
