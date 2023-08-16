class AppAssets {
  AppAssets._();
  // static const   _jsonPath = "assets/json";
  // static const String  emptyJson = "$_base/empty.json";

  /// Common path for json
  static String jsonPath(String fileName) {
    return "assets/json/$fileName";
  }

  /// common path for image
  static String imagePath(String fileName) {
    return "assets/images/$fileName";
  }

  /// All json String delete.json
  static String get arrowPlane => jsonPath("arrowplan.json");
  static String get happy => jsonPath("happy.json");
  static String get leftRight => jsonPath("left_right.json");
  static String get loadingFlag => jsonPath("loadingFlag.json");
  static String get loading => jsonPath("loading2.json");
  static String get plan =>  jsonPath("plane.json");
  static String get waveFlag => jsonPath("waveflag.json");
  static String get indiaFlag => jsonPath("indiaFlag.json");

}


