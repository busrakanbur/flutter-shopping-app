import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RateController extends GetxController {
  int likeCount = 23;
  final getStorage = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  Future<bool> saveLikeCount(bool isLiked) async {
    getStorage.write("isLiked", !isLiked);
    if (!isLiked) {
      likeCount++;
    } else {
      likeCount > 0 ? likeCount-- : 0;
    }
    getStorage.write("likeCount", likeCount);
    return !isLiked;
  }
}
