import 'package:get/get.dart';

class CategoryFormController extends GetxController {
  final _name = ''.obs;
  final _description = ''.obs;
  final _image = ''.obs;
  final _status = ''.obs;

  String get name => _name.value;
  String get description => _description.value;
  String get image => _image.value;
  String get status => _status.value;

  void setName(String value) => _name.value = value;
  void setDescription(String value) => _description.value = value;
  void setImage(String value) => _image.value = value;
  void setStatus(String value) => _status.value = value;

  void clear() {
    _name.value = '';
    _description.value = '';
    _image.value = '';
    _status.value = '';
  }
}
