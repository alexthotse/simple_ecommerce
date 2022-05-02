package com.alexthotse.RestApi;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class CardController {

    @CrossOrigin
    @RequestMapping(value = "/card/{name}", method = RequestMethod.POST)
    public ResponseEntity<Object> conversation(@PathVariable(value = "name") String name, @RequestBody Card card){

        System.out.println(card.getBankName());
        DataStore.saveUsersCards(card, name);

        return new ResponseEntity<>("success", HttpStatus.CREATED);
    }

}
