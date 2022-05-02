package com.alexthotse.RestApi;



import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class ConversationController {

    @CrossOrigin
    @RequestMapping(value = "/chat/{name}", method = RequestMethod.POST)
    public ResponseEntity<Object> conversation(@PathVariable(value = "name") String name, @RequestBody ConversationRequest conversationRequest){

        DataStore.saveUsersChat(conversationRequest.getMessage(),conversationRequest.getDate(), conversationRequest.getIsSentByMe(),name);
        System.out.println(conversationRequest.getDate());
        System.out.println(conversationRequest.getIsSentByMe());


        return new ResponseEntity<>("success", HttpStatus.OK);
    }

}
