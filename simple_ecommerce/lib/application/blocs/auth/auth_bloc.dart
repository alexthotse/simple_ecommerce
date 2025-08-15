import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simple_ecommerce/domain/repositories/auth_repository.dart';
// For getIt

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(AuthInitial()) {
    on<SignInRequested>((event, emit) async {
      emit(AuthLoadInProgress());
      try {
        final userId = await _authRepository.signIn(event.email, event.password);
        emit(AuthSuccess(email: event.email)); // Assuming email is sufficient for AuthSuccess
      } catch (e) {
        emit(AuthFailure(message: e.toString()));
      }
    });

    on<SignUpRequested>((event, emit) async {
      emit(AuthLoadInProgress());
      try {
        final userId = await _authRepository.signUp(event.email, event.password);
        emit(AuthSuccess(email: event.email));
      } catch (e) {
        emit(AuthFailure(message: e.toString()));
      }
    });

    on<SignOutRequested>((event, emit) async {
      emit(AuthLoadInProgress());
      // No sign out in repository for now, just transition state
      emit(AuthInitial());
    });
  }
}