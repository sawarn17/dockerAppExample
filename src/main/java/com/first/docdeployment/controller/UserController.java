package com.first.docdeployment.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @GetMapping("/getTheApp")
    public ResponseEntity<Object> getDetails(){
        return new ResponseEntity<>("Hi i am here ",HttpStatus.OK);
    }
}
