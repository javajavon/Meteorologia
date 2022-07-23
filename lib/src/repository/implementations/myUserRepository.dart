import 'dart:io';

import 'package:meteorologia/src/model/perfil.dart';
import 'package:meteorologia/src/provider/firebase_provider.dart';
import 'package:meteorologia/src/repository/myUserRepository.dart';

class MyUserRepository extends MyUserRepositoryBase {
  final provider = FirebaseProvider();

  @override
  Future<MyUser?> getMyUser() => provider.getMyUser();

  @override
  Future<void> saveMyUser(MyUser user, File? image) => provider.saveMyUser(user, image);
}
