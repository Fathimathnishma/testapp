// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/home/data/models/i_mainfacade.dart' as _i978;
import '../../features/home/repo/i_main_impli.dart' as _i517;
import 'injecdable_module.dart' as _i354;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  await gh.factoryAsync<_i354.FirebaseServices>(
    () => firebaseInjectableModule.firebaseServices,
    preResolve: true,
  );
  gh.lazySingleton<_i974.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i978.IMainfacade>(
      () => _i517.IMainImpl(gh<_i974.FirebaseFirestore>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i354.FirebaseInjectableModule {}
