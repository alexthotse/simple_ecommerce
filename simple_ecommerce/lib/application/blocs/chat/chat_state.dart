
part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object> get props => [];
}

class ChatInitial extends ChatState {}

class ChatSendInProgress extends ChatState {}

class ChatSendSuccess extends ChatState {
  final String message;

  const ChatSendSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

class ChatSendFailure extends ChatState {
  final String message;

  const ChatSendFailure({required this.message});

  @override
  List<Object> get props => [message];
}
