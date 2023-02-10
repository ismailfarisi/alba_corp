import 'package:alba_corp/core/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

enum Env { dev, prod }

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies([Env env = Env.dev]) => getIt.init();
