package com.alexthotse.RestApi;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class PersonController {
    @CrossOrigin
    @RequestMapping(value = "/login/{name}", method = RequestMethod.GET)
    public ResponseEntity<Object> loginPerson(@PathVariable(value = "name") String name, @RequestBody LoginRequest loginRequest){

        User user = new User(loginRequest.getEmail(), loginRequest.getPassword());


        if(DataStore.checkUser(user)){
            System.out.println(HttpStatus.OK);

            return new ResponseEntity<>("exists",HttpStatus.OK);
        }
        return new ResponseEntity<>("non existent", HttpStatus.CREATED);
    }

    @CrossOrigin
    @RequestMapping(value = "/register/{name}", method = RequestMethod.POST)
    public ResponseEntity<Object> registerPerson(@PathVariable(value = "name") String name, @RequestBody LoginRequest loginRequest){

        User user = new User(loginRequest.getEmail(), loginRequest.getPassword());
        System.out.println(user.getEmail());
        DataStore.addUser(user);

        return new ResponseEntity<>("success", HttpStatus.CREATED);
    }
}
