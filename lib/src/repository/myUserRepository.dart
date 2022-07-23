import 'dart:io';

import 'package:meteorologia/src/model/perfil.dart';

abstract class MyUserRepositoryBase {
  Future<MyUser?> getMyUser();

  Future<void> saveMyUser(MyUser user, File? image);
}
