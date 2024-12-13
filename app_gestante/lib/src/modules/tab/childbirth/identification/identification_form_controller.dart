import 'package:app_gestante/src/model/gestation/pregnant_model.dart';
import 'package:app_gestante/src/modules/tab/childbirth/identification/identification_page.dart';
import 'package:flutter/material.dart';

mixin IdentificationFormController on State<IdentificationPage> {
  final nameEC = TextEditingController();
  final socialNameEC = TextEditingController();
  final birthdayEC = TextEditingController();
  final cpfEC = TextEditingController();
  final nationalHealthCardEC = TextEditingController();
  final prenatalPlaceEC = TextEditingController();
  final profissionalEC = TextEditingController();
  final prenatalPlaceContactEC = TextEditingController();

  void disposeControllers() {
    nameEC.dispose();
    socialNameEC.dispose();
    birthdayEC.dispose();
    cpfEC.dispose();
    nationalHealthCardEC.dispose();
    prenatalPlaceEC.dispose();
    profissionalEC.dispose();
    prenatalPlaceContactEC.dispose();
  }

  void initializeForm(final PregnantModel? model) {
    if (model != null) {
      nameEC.text = model.name;
      socialNameEC.text = model.socialName ?? '';
      birthdayEC.text = model.birthDate.toString();
      cpfEC.text = model.cpf;
      nationalHealthCardEC.text = model.nationalHealthCardNumber ?? '';
      prenatalPlaceEC.text = model.preNatalPlace ?? '';
      profissionalEC.text = model.profissionalName ?? '';
      prenatalPlaceContactEC.text = model.prenatalPlaceContact ?? '';
    }
  }

  PregnantModel updatePregnant(PregnantModel model) {
    return model.copyWith(
      name: nameEC.text,
      socialName: socialNameEC.text,
      birthDate: birthdayEC.text,
      cpf: cpfEC.text,
      nationalHealthCardNumber: nationalHealthCardEC.text,
      preNatalPlace: prenatalPlaceEC.text,
      profissionalName: profissionalEC.text,
      prenatalPlaceContact: prenatalPlaceContactEC.text,
    );
  }
}
