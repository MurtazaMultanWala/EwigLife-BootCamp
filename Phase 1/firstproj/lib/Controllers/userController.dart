import 'package:firstproj/Models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  //observable means loads the specific person data only.
  Rx<UserModel> _userModel = UserModel().obs;

  UserModel get user => _userModel.value;

  set user(UserModel value) => this._userModel.value = value;

  void clear() {
    _userModel.value = UserModel();
  }
}
