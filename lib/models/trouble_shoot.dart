import "package:dat_engineering/models/step.dart";

class TroubleShoot {
  String title;
  String description;
  List<TroubleshootStep> troubleShootSteps;

  TroubleShoot({this.title, this.description, this.troubleShootSteps});
}
