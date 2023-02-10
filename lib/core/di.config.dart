// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alba_corp/data/data_source/fake_api_source.dart' as _i3;
import 'package:alba_corp/data/repository/payment_repository_impl.dart' as _i5;
import 'package:alba_corp/data/repository/service_repository_impl.dart' as _i7;
import 'package:alba_corp/domain/repository/payment_repository.dart' as _i4;
import 'package:alba_corp/domain/repository/services_repository.dart' as _i6;
import 'package:alba_corp/domain/usecases/payments/add_card.dart' as _i8;
import 'package:alba_corp/domain/usecases/payments/get_cards.dart' as _i9;
import 'package:alba_corp/domain/usecases/services/get_services.dart' as _i10;
import 'package:alba_corp/domain/usecases/services/get_time_slots.dart' as _i11;
import 'package:alba_corp/view/saved_cards_page/cubit/saved_cards_page_cubit.dart'
    as _i12;
import 'package:alba_corp/view/schedule_page/cubit/schedule_page_cubit.dart'
    as _i13;
import 'package:alba_corp/view/services_page/cubit/services_page_cubit.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.FakeApiSource>(() => _i3.FakeApiSource());
    gh.factory<_i4.PaymentRepository>(
        () => _i5.PaymentRepositoryImpl(gh<_i3.FakeApiSource>()));
    gh.factory<_i6.ServicesRepository>(
        () => _i7.ServiceRepositoryImpl(gh<_i3.FakeApiSource>()));
    gh.factory<_i8.AddCardUsecase>(
        () => _i8.AddCardUsecase(gh<_i4.PaymentRepository>()));
    gh.factory<_i9.GetCardsUsecase>(
        () => _i9.GetCardsUsecase(gh<_i4.PaymentRepository>()));
    gh.factory<_i10.GetServicesUsecase>(
        () => _i10.GetServicesUsecase(gh<_i6.ServicesRepository>()));
    gh.factory<_i11.GetTimeSlotsUsecase>(
        () => _i11.GetTimeSlotsUsecase(gh<_i6.ServicesRepository>()));
    gh.factory<_i12.SavedCardsPageCubit>(() => _i12.SavedCardsPageCubit(
          gh<_i9.GetCardsUsecase>(),
          gh<_i8.AddCardUsecase>(),
        ));
    gh.factory<_i13.SchedulePageCubit>(
        () => _i13.SchedulePageCubit(gh<_i11.GetTimeSlotsUsecase>()));
    gh.factory<_i14.ServicesPageCubit>(
        () => _i14.ServicesPageCubit(gh<_i10.GetServicesUsecase>()));
    return this;
  }
}
