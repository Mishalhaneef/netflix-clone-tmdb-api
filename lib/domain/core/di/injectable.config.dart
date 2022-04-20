// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i5;
import '../../../application/fast%20laugh/fastlaugh_bloc.dart' as _i6;
import '../../../application/search/search_bloc.dart' as _i9;
import '../../../infrastructure/downloads/download_implementation.dart' as _i4;
import '../../../infrastructure/search/search_implementation.dart' as _i8;
import '../../downloads/download_service.dart' as _i3;
import '../../search/model/search_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadService>(() => _i4.DownloadsRepository());
  gh.factory<_i5.DownloadsBloc>(
      () => _i5.DownloadsBloc(get<_i3.DownloadService>()));
  gh.factory<_i6.FastlaughBloc>(
      () => _i6.FastlaughBloc(get<_i3.DownloadService>()));
  gh.lazySingleton<_i7.SearchService>(() => _i8.SearchImplementation());
  gh.factory<_i9.SearchBloc>(() =>
      _i9.SearchBloc(get<_i3.DownloadService>(), get<_i7.SearchService>()));
  return get;
}
