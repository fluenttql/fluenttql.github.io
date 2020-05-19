package com.example.demo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

public class Test3 {

	 @ResponseBody
	    @RequestMapping(value = "/setTitle", method = RequestMethod.GET, produces = "application/json")
	    public Map<String, String> setTitle(String title) {
	       
	        Map<String, String> messageObject = new HashMap<>();
	        messageObject.put("title", title);
	        return messageObject;
	    }
}
