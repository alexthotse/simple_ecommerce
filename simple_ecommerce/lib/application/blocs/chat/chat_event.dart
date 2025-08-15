
part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class SendMessage extends ChatEvent {
  final String email;
  final Message message;

  const SendMessage({required this.email, required this.message});

  @override
  List<Object> get props => [email, message];
}
