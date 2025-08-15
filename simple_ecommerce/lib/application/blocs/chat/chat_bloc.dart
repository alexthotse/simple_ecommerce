import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simple_ecommerce/domain/repositories/chat_repository.dart';
// For getIt
import 'package:simple_ecommerce/domain/models/message.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;

  ChatBloc({required ChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(ChatInitial()) {
    on<SendMessage>((event, emit) async {
      emit(ChatSendInProgress());
      try {
        await _chatRepository.sendMessage(event.email, event.message);
        emit(const ChatSendSuccess(message: "Message sent successfully"));
      } catch (e) {
        emit(ChatSendFailure(message: e.toString()));
      }
    });
  }
}