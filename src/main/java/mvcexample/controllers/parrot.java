package mvcexample.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.xml.bind.DatatypeConverter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Controller
public class parrot {
    @RequestMapping (value = "/parrot", method = RequestMethod.GET)
    public String parrot () {
        return "parrot";
    }
    @ResponseBody
    @RequestMapping (value = "/parrot", method = RequestMethod.POST)
    public String parrotsays (@RequestBody String body) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        byte[] bytesOfMessage = body.getBytes("UTF-8");


        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] thedigest = md.digest(bytesOfMessage);
        return DatatypeConverter.printHexBinary(thedigest).toLowerCase();
    }

}


