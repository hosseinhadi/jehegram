import 'package:flutter/foundation.dart';

String getAssetImage(String imageFileName) {
  if (!kIsWeb) {
    return 'assets/images/$imageFileName';
  } else {
    return 'images/$imageFileName';
  }
}

List<String> getAssetImages(List<String> imageFileNames) {
  if (imageFileNames.length > 0) {
    return imageFileNames.map((e) => getAssetImage(e)).toList();
  } else {
    return [];
  }
}
