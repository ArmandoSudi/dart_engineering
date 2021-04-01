class TroubleshootStep {
  String title;
  String description;
  String imageUrl;

  TroubleshootStep({this.title, this.description, this.imageUrl});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map["title"] = this.title;
    map["description"] = this.description;
    map["imageUrl"] = this.imageUrl;
    return map;
  }

  TroubleshootStep.fromMap(Map<String, dynamic> map) {
    TroubleshootStep(
        title: map["title"],
        description: map["description"],
        imageUrl: map["imageUrl"]);
  }
}
