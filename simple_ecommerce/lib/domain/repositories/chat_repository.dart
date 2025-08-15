import 'package:simple_ecommerce/domain/models/message.dart';

abstract class ChatRepository {
  Future<void> sendMessage(String email, Message message);
}