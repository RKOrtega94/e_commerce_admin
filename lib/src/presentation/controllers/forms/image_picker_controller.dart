import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/// Image Picker Controller
class ImagePickerController extends GetxController {
  final _image = ''.obs;
  String get image => _image.value;

  final _picker = ImagePicker();

  /// Pick image from gallery
  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image.value = pickedFile.path;
    }
  }

  /// Pick image from camera
  Future<void> pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _image.value = pickedFile.path;
    }
  }
}
