package com.example.demo.exception;

import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.configuration.*;

/*class dataNotStoredException extends Exception{
	dataNotStoredException(String s){
		super (s);
	}
}*/

@ControllerAdvice
public class DataNotStored extends Exception {
	@Autowired
	private Properties configUtil;
	private static final long serialVersionUID = 1L;

	@ExceptionHandler(SQLException.class)
	public String handleSqlException(SQLException sqlException) {
		return "Error.jsp";
	}

	/*
	 * @ExceptionHandler(.class) public String handleSqlException(SQLException
	 * sqlException) { return "Error.jsp"; }
	 */
	
	@ExceptionHandler(LoginValidationException.class)
	public ModelAndView handleValidationException(LoginValidationException validException) {
		ModelAndView model = new ModelAndView();
		model.setViewName("Login.jsp");
		String error = configUtil.getProperty("message");
		model.addObject("fail", error);
		return model;
	}

}