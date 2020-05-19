package com.example.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

public class Demo1 {
	
	 @Autowired
	    private JdbcTemplate jdbcTemplate;

	    @RequestMapping(value = "/sql_injection", method = RequestMethod.POST)
	    @ResponseBody
	    public String execute_query(@RequestParam("query") String name, HttpServletRequest request,
	            HttpServletResponse response) {
 
	        String query = name;
	        List<String> val = jdbcTemplate.queryForList(query.trim(), String.class);
	        return val.toString();
	    }

	    
}
