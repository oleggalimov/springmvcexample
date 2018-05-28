package mvcexample.controllers;



import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class currenttime {
    @RequestMapping(value = "/getdate", method = RequestMethod.GET)
    public String getDate () {
        return new Date().toString();
    }
}
