import 'package:crud_with_flutter/app/domain/interfaces/contact_dao.dart';
import 'package:crud_with_flutter/app/domain/services/contact_services.dart';
import 'package:get_it/get_it.dart';

import 'database/sqlite/dao/contact_dao_implement.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContactDAO>(ContactDAOImplement());
  getIt.registerSingleton<ContactService>(ContactService());
}