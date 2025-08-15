import 'package:pocketbase/pocketbase.dart';
import 'package:simple_ecommerce/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final PocketBase pb;

  AuthRepositoryImpl(this.pb);

  @override
  Future<String> signIn(String email, String password) async {
    try {
      final authData = await pb.collection('users').authWithPassword(
            email,
            password,
          );
      return authData.record.id; // Or some other identifier
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  @override
  Future<String> signUp(String email, String password) async {
    try {
      final record = await pb.collection('users').create(body: {
        'email': email,
        'password': password,
        'passwordConfirm': password,
      });
      return record.id;
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }
}