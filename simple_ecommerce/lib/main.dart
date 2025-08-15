import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/auth/auth_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/checkout/checkout_bloc.dart'; // New import
import 'package:simple_ecommerce/application/blocs/chat/chat_bloc.dart'; // New import
import 'package:simple_ecommerce/presentation/core/routes.dart';
import 'package:simple_ecommerce/presentation/features/splash/splash_screen.dart';
import 'package:simple_ecommerce/presentation/core/theme.dart';
import 'package:simple_ecommerce/core/dependency_injection.dart'; // New import
import 'package:simple_ecommerce/domain/repositories/auth_repository.dart'; // New import
import 'package:simple_ecommerce/domain/repositories/checkout_repository.dart'; // New import
import 'package:simple_ecommerce/domain/repositories/chat_repository.dart'; // New import

void main() {
  setupLocator(); // Call setupLocator
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Removed ChangeNotifierProvider<CardProvider>
        // Removed ChangeNotifierProvider<ChatProvider>
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authRepository: getIt<AuthRepository>()), // Injected AuthRepository
          ),
          BlocProvider<CheckoutBloc>(
            create: (context) => CheckoutBloc(checkoutRepository: getIt<CheckoutRepository>()), // Injected CheckoutRepository
          ),
          BlocProvider<ChatBloc>(
            create: (context) => ChatBloc(chatRepository: getIt<ChatRepository>()), // Injected ChatRepository
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Simple Shop',
          theme: theme(),
          initialRoute: SplashScreen.routeName,
          routes: routes,
        ),
      ),
    );
  }
}