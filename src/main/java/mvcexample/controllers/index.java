package mvcexample.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.jndi.JndiTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.naming.NamingException;

//@Controller
@RestController
public class index {
    @Autowired
    private Environment env;
    @RequestMapping (value = "/index",  method = RequestMethod.GET)
    public String getIndexPage () {
        try {
            String lookup = new JndiTemplate().lookup("jms/connectionFactory", String.class);
            return lookup;
        } catch (NamingException e) {
            e.printStackTrace();
            return e.getMessage();
        }

    }
}
