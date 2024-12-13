import 'package:app_gestante/src/core/app_database.dart';
import 'package:app_gestante/src/modules/tab/childbirth/expectations/expectations_page.dart';
import 'package:flutter/material.dart';

mixin ExpectationsFormController on State<ExpectationsPage> {
  final companionEC = TextEditingController();
  final shaveIntimateHairEC = TextEditingController();
  final bowelWashOrSuppositoryEC = TextEditingController();
  final lowLightEnvironmentEC = TextEditingController();
  final listenToMusicEC = TextEditingController();
  final drinkLiquidsEC = TextEditingController();
  final recordPhotosOrVideosEC = TextEditingController();

  void disposeControllers() {
    companionEC.dispose();
    shaveIntimateHairEC.dispose();
    bowelWashOrSuppositoryEC.dispose();
    lowLightEnvironmentEC.dispose();
    listenToMusicEC.dispose();
    drinkLiquidsEC.dispose();
    recordPhotosOrVideosEC.dispose();
  }

  void initializeForm(Expectation? expectations) {
    if (expectations != null) {
      companionEC.text = expectations.companion.index.toString();
      shaveIntimateHairEC.text =
          expectations.shaveIntimateHair.index.toString();
      bowelWashOrSuppositoryEC.text =
          expectations.bowelWashOrSuppository.index.toString();
      lowLightEnvironmentEC.text =
          expectations.lowLightEnvironment.index.toString();
      listenToMusicEC.text = expectations.listenToMusic.index.toString();
      drinkLiquidsEC.text = expectations.drinkLiquids.index.toString();
      recordPhotosOrVideosEC.text =
          expectations.recordPhotosOrVideos.index.toString();
    } else {
      companionEC.text = '0';
      shaveIntimateHairEC.text = '0';
      bowelWashOrSuppositoryEC.text = '0';
      lowLightEnvironmentEC.text = '0';
      listenToMusicEC.text = '0';
      drinkLiquidsEC.text = '0';
      recordPhotosOrVideosEC.text = '0';
    }
  }
}
