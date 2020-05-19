package com.example.demo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

public class Test2 {
	
	 @RequestMapping(value = "/open_link", method = RequestMethod.GET)
	    @ResponseBody
	    public void open_link(String url, HttpServletRequest request, HttpServletResponse response) {
	        try {
	        	String input = request.getParameter("input");
	        	input.replace("/", "-");
	            response.sendRedirect(input);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	    }
}
