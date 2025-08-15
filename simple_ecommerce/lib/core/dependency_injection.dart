import 'package:get_it/get_it.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:simple_ecommerce/domain/repositories/auth_repository.dart';
import 'package:simple_ecommerce/infrastructure/repositories/auth_repository_impl.dart';
import 'package:simple_ecommerce/domain/repositories/checkout_repository.dart'; // New import
import 'package:simple_ecommerce/infrastructure/repositories/checkout_repository_impl.dart'; // New import
import 'package:simple_ecommerce/domain/repositories/chat_repository.dart'; // New import
import 'package:simple_ecommerce/infrastructure/repositories/chat_repository_impl.dart'; // New import

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<PocketBase>(PocketBase('http://127.0.0.1:8090')); // TODO: Replace with actual Pocketbase URL
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));
  getIt.registerLazySingleton<CheckoutRepository>(() => CheckoutRepositoryImpl(getIt()));
  getIt.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl(getIt())); // New registration
}